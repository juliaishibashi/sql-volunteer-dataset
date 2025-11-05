CREATE TABLE member(
    mid char(30) PRIMARY KEY,
    member_name char(30),
    role char(30)
);

INSERT INTO member (mid, member_name, role) VALUES
('MID001', 'John Doe', 'Admin'),
('MID002', 'Jane Smith', 'Moderator'),
('MID003', 'Alice Johnson', 'Member'),
('MID004', 'Bob Williams', 'Member'),
('MID005', 'Eva Brown', 'Member');

INSERT INTO member (mid, member_name, role) VALUES
('MID006', 'Michael Anderson', 'Member'),
('MID007', 'Emily Wilson', 'Member'),
('MID008', 'David Martinez', 'Member'),
('MID009', 'Sophia Lee', 'Member'),
('MID010', 'James Garcia', 'Member');

CREATE TABLE volunteer (
    mid CHAR(30) PRIMARY KEY,
    tier CHAR(30),
    availability CHAR(30)
);

INSERT INTO volunteer (mid, tier, availability) VALUES
('MID002', '2', 'Weekdays'),
('MID004', '1', 'Weekends'),
('MID006', '3', 'Weekdays'),
('MID008', '5', 'Weekends'),
('MID010', '3', 'Everyday');

CREATE TABLE paid_employee (
    mid CHAR(30) PRIMARY KEY,
    salary DECIMAL(10, 2));

INSERT INTO paid_employee (mid, salary) VALUES
('MID001', '2000'),
('MID003', '3500');

CREATE TABLE office (
    address CHAR(50) PRIMARY KEY DEFAULT '3141 Shelbourne Street',
    rent DECIMAL(10, 2) DEFAULT 3000.00
);

CREATE TABLE donors (
    did CHAR(30) PRIMARY KEY,
    name CHAR(30),
    amount DECIMAL(10, 2)
);

INSERT INTO donors (did, name, amount) VALUES
('d001', 'Angelina Jolie', 10000000),
('d002', 'Leonardo DiCaprio', 5000),
('d003', 'Beyoncé Knowles', 200),
('d004', 'Cristiano Ronaldo', 75000),
('d005', 'Serena Williams', 3000),
('d006', 'Tom Brady', 100000),
('d007', 'Kobe Bryant', 25000),
('d008', 'Megan Rapinoe', 500),
('d009', 'Michael Jordan', 1000000),
('d010', 'Rihanna', 15000);

CREATE TABLE website (
    url VARCHAR(100) PRIMARY KEY
);
INSERT INTO website (url) VALUES ('https://www.gng.com');

CREATE TABLE campaigns(
    cid char(30) PRIMARY KEY,
    campaign_name char(30),
    regions char(30),
    location char(30)
);

INSERT INTO campaigns (cid, campaign_name, regions, location) VALUES
('c001', 'Island Adventure', 'Vancouver Island', 'Victoria'),
('c002', 'Beach Cleanup Drive', 'Vancouver Island', 'Tofino'),
('c003', 'Mountain Hiking Expedition', 'Vancouver Island', 'Nanaimo'),
('c004', 'Island Food Festival', 'Vancouver Island', 'Duncan'),
('c005', 'Whale Watching Tour', 'Vancouver Island', 'Port Hardy'),
('c006', 'Fishing Tournament', 'Vancouver Island', 'Campbell River'),
('c007', 'Cultural Heritage Exhibition', 'Vancouver Island', 'Courtenay'),
('c008', 'Botanical Garden Tour', 'Vancouver Island', 'Qualicum Beach'),
('c009', 'Island Music Concert', 'Vancouver Island', 'Parksville'),
('c010', 'Surfing Competition', 'Vancouver Island', 'Ucluelet'),
('c011', 'Wildlife Photography Workshop', 'Vancouver Island', 'Port Alberni'),
('c012', 'Farmers Market', 'Vancouver Island', 'Sidney'),
('c013', 'Craft Beer Festival', 'Vancouver Island', 'Port McNeill'),
('c014', 'Artisan Fair', 'Vancouver Island', 'Sooke'),
('c015', 'Nature Trail Exploration', 'Vancouver Island', 'Port Renfrew'),
('c016', 'Yoga Retreat', 'Vancouver Island', 'Salt Spring Island'),
('c017', 'Kayaking Expedition', 'Vancouver Island', 'Gulf Islands'),
('c018', 'Scuba Diving Adventure', 'Vancouver Island', 'Bamfield'),
('c019', 'Wine Tasting Tour', 'Vancouver Island', 'Cowichan Valley'),
('c020', 'Island Marathon', 'Vancouver Island', 'Port Alice');

CREATE TABLE phases (
    pid CHAR(30),
    cid CHAR(30),
    cost CHAR(30),
    duration CHAR(30),
    material CHAR(30),
    PRIMARY KEY (pid, cid)
);

INSERT INTO phases (pid, cid, cost, duration, material) VALUES
('1', 'c001', '1000', '2', 'Posters'),
('2', 'c002', '500', '1', 'Posters'),
('3', 'c003', '1500', '3', 'Posters'),
('1', 'c004', '800', '8', 'Placards'),
('4', 'c005', '1200', '2', 'Posters'),
('3', 'c006', '600', '7', 'Placards'),
('2', 'c007', '2000', '6', 'Posters'),
('1', 'c008', '300', '5', 'Placards'),
('1', 'c009', '900', '2', 'Posters'),
('1', 'c010', '750', '4', 'Posters'),
('1', 'c011', '1100', '3', 'Posters'),
('1', 'c012', '400', '8', 'Placards'),
('1', 'c013', '1600', '3', 'Posters'),
('1', 'c014', '700', '5', 'Posters'),
('1', 'c015', '1800', '4', 'Posters'),
('1', 'c016', '850', '5', 'Placards'),
('1', 'c017', '1250', '5', 'Posters'),
('1', 'c018', '950', '3', 'Placards'),
('1', 'c019', '500', '7', 'Posters'),
('1', 'c020', '2000', '2', 'Placards');

CREATE TABLE is_in (
    pid INTEGER,
    cid CHAR(30),
    PRIMARY KEY (pid, cid)
);

insert into is_in (pid, cid) values
('1', 'c001'),
('2', 'c002'),
('3', 'c003'),
('1', 'c004'),
('4', 'c005'),
('3', 'c006'),
('2', 'c007'),
('1', 'c008'),
('1', 'c009'),
('1', 'c010'),
('1', 'c011'),
('1', 'c012'),
('1', 'c013'),
('1', 'c014'),
('1', 'c015'),
('1', 'c016'),
('1', 'c017'),
('1', 'c018'),
('1', 'c019'),
('1', 'c020');

CREATE TABLE contributes (
    did CHAR(30),
    cid CHAR(30),
    PRIMARY KEY (did, cid)
);

INSERT INTO contributes (did, cid) VALUES
('d001', 'c001'),
('d002', 'c002'),
('d003', 'c003'),
('d004', 'c004'),
('d005', 'c005'),
('d006', 'c006'),
('d007', 'c007'),
('d008', 'c008'),
('d009', 'c009'),
('d010', 'c010'),
('d001', 'c011'),
('d002', 'c012'),
('d003', 'c013'),
('d004', 'c014'),
('d005', 'c015'),
('d006', 'c016'),
('d007', 'c017'),
('d008', 'c018'),
('d009', 'c019'),
('d010', 'c020');


ALTER TABLE phases
ALTER COLUMN duration TYPE INTEGER USING duration::INTEGER;

CREATE TABLE participate (
    cid CHAR(30),
    mid CHAR(30),
    PRIMARY KEY (cid, mid)
);

INSERT INTO participate (mid, cid) VALUES
('NULL', 'c001'),
('NULL', 'c004'),
('NULL', 'c008'),
('NULL', 'c009'),
('NULL', 'c015'),
('NULL', 'c020'),
('MID002', 'c002'),
('MID004', 'c002'),
('MID002', 'c003'),
('MID004', 'c003'),
('MID002', 'c005'),
('MID002', 'c006'),
('MID004', 'c007'),
('MID004', 'c010'),
('MID006', 'c011'),
('MID006', 'c012'),
('MID008', 'c013'),
('MID008', 'c014'),
('MID004', 'c016'),
('MID006', 'c017'),
('MID008', 'c017'),
('MID006', 'c018'),
('MID008', 'c018'),
('MID008', 'c019');

CREATE TABLE interested_supporters (
    mid CHAR(30) PRIMARY KEY,
    interested_topic CHAR(30)
);

CREATE TABLE working_at (
    mid CHAR(30),
    address CHAR(30),
    PRIMARY KEY (mid, address)
);

INSERT INTO working_at(mid, address) VALUES
    ('MID003', '3141 Shelbourne Street');

CREATE TABLE up_on (
    cid CHAR(30),
    url CHAR(30),
    PRIMARY KEY (cid, url)
);

CREATE TABLE manages (
    mid CHAR(30),
    url CHAR(30),
    PRIMARY KEY (mid, url)
);

ALTER TABLE volunteer
ALTER COLUMN tier TYPE INTEGER USING tier::INTEGER;

ALTER TABLE phases
ALTER COLUMN pid TYPE INTEGER USING pid::INTEGER;

ALTER TABLE phases
ALTER COLUMN cost TYPE INTEGER USING cost::INTEGER;

ALTER TABLE is_in
ALTER COLUMN pid TYPE INTEGER USING pid::INTEGER;

CREATE VIEW member_view AS
SELECT member_name, role
FROM member;







