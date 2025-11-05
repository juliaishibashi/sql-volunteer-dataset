A set of relations:
member (mid, member_name, role)
volunteer (mid, tier, availability)
interested_supporters(mid, interested_topic)
paid_employee (mid, salary)
office (address, rent)
donors (did, name, amount)
website (url)
campaigns (cid, campaign_name, regions, location)
phrases (pid, cid, cost, duration, material)

is_in(pid, cid)
contributes(did, cid)
participate(cid, mid)
working_at(mid, address)
up_on(cid,url)
manages(mid, url)

Assumption: All IDs are unique and we only have one office and one website.
