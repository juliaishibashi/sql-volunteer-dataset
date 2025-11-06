# Database Design: Non-Profit Organization Management System

## Relations

- **member**(`mid`, `member_name`, `role`)
- **volunteer**(`mid`, `tier`, `availability`)
- **interested_supporters**(`mid`, `interested_topic`)
- **paid_employee**(`mid`, `salary`)
- **office**(`address`, `rent`)
- **donors**(`did`, `name`, `amount`)
- **website**(`url`)
- **campaigns**(`cid`, `campaign_name`, `regions`, `location`)
- **phrases**(`pid`, `cid`, `cost`, `duration`, `material`)

### Relationships

- **is_in**(`pid`, `cid`)
- **contributes**(`did`, `cid`)
- **participate**(`cid`, `mid`)
- **working_at**(`mid`, `address`)
- **up_on**(`cid`, `url`)
- **manages**(`mid`, `url`)

## Assumptions

- All IDs (`mid`, `did`, `cid`, `pid`) are **unique**.  
- The organization has **only one office**.  
- The organization has **only one website**.  

## Notes

- The schema represents relationships among members, donors, campaigns, and other entities.  
- Relationships such as `participate`, `contributes`, and `working_at` indicate interactions between entities.  
- `phrases` table stores campaign-specific promotional details.  

## ER Diagram

![ER Diagram](er_diagram.png)
