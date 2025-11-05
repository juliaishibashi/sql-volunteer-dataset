--1. Who are the volunteers that have attended three or more campaigns?
SELECT member_name FROM member
JOIN volunteer ON member.mid = volunteer.mid
WHERE volunteer.tier >= 3;

--2. What is the average of the salary among employees earning $2000 or more?
SELECT AVG(salary) FROM paid_employee
WHERE paid_employee.salary >= 2000;

--3. What is the campaign name that current phase is preparing?
SELECT P2.pid, campaign_name
FROM campaigns,(SELECT pid, cid
                FROM phases
                WHERE phases.pid = 2) AS P2
WHERE campaigns.cid = P2.cid;

--4. What is the campaign name that current phase is plannning?
SELECT campaign_name, pid FROM campaigns
JOIN is_in ON campaigns.cid = is_in.cid
WHERE is_in.pid = 1;

--5. Who volanteered Beach Cleanup Drive(cid = c002)?
SELECT member_name
FROM member
JOIN participate ON member.mid = participate.mid
WHERE participate.cid = 'c002';

--6. Who is the member but not volunteer?
SELECT member_name, mid
FROM member
WHERE NOT EXISTS (
    SELECT mid
    FROM volunteer
    WHERE volunteer.mid = member.mid
);

--7. Show the name and role of paid_employee
SELECT member_name, role
FROM member
WHERE mid IN (
    SELECT mid
    FROM paid_employee
);

--8. Who's in office?
SELECT member_name
FROM member
JOIN working_at ON member.mid = working_at.mid
WHERE address = '3141 Shelbourne Street';


--9. Who is the doner contributed to Fishing Tournament c006?
SELECT name
FROM donors
WHERE EXISTS (
    SELECT cid
    FROM contributes
    WHERE contributes.did = donors.did
    AND contributes.cid = 'c006'
);

--10. How much do we have money left?
SELECT 
    (SELECT SUM(amount) FROM donors) - (SELECT SUM(cost) FROM phases) AS balance;


--11. Delete members who are neither volunteers nor paid employees
DELETE FROM member
WHERE NOT EXISTS (
    SELECT *
    FROM volunteer
    WHERE volunteer.mid = member.mid
) AND NOT EXISTS (
    SELECT *
    FROM paid_employee
    WHERE paid_employee.mid = member.mid
);
