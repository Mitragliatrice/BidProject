# Bid Project

**High Level Req:** Buyers and Sellers can log in and either put an object up for sale, or bid on an item.

I'll use a Monolithic Architecture simply for ease of authentication and authorization.

## Pages:
- Seller
  - Login
  - Profile
  - Item CRUD
    - Google Map (for properties)
  - Bid View
  - Receive Payment (Stripe/Paypal)
  - Sale History
  - Messages
- Buyer
  - Login
  - Profile
  - Item View
  - Bid CRUD
  - Pay (Paypal/Stripe)
  - Purchase History
  - Message Seller
- Admin
- Static
  - Directional Landing (Guests)
  - Home (Different stuff depending on seller vs buyer vs admin)
  - Contact Us
  - About Us

## Devise Users

Petergate access(Seller, Buyer, All-Access, Admin)


## Tables
- Users (name, email, address, phone, avatar)
  - has_many items
  - has_many bids
  - has_many purchases
  - has_many sales
  - has_many ratings
- Items (title, description, pictures, minimum_price, time_open)
  - belongs_to user
- Bids  (amount, status[enum])
  - belongs_to user
- Purchases
  - belongs_to user
- Sales
  - belongs_to user
- Ratings (feedback, rating(integer 1-5 to rep. stars))
  - belongs_to user

## Pages
| Landing Page  |Seller   |Buyer   |*All Access   |*Admin    |
|---|---|---|---|---|
|Seller Login   |Home   |Home   |Home   |Home   |
|Buyer Login   |Create Item   |View Items   |   |Dashboard of some-sort   |
|How it Works   |View My Items   |View Bids   |   |   |
|About Us   |Edit Profile   |Search Items   |   |   |
||||||

## Seller
|Home|Create Item|My Items|Edit Profile|
|---|---|---|---|---|
|All My Items|Form   |Index|Personal   |   |
|New Item Btn   |Address Links to Map   |Create New|Financial   |
|Profile   |   |CRUD   |   |   |
|||Choose Bid|||
||||||
## Buyer
|Home|View Items|Current Bids|Edit Profile|Search Items|
|---|---|---|---|---|---|
|Current Bids w/Time Left|Filterable Index of Items|Index My Bids   |Same as Seller   |Direct Search|
|Bids Won|Make Bid|CRUD|View Rating  |   | 
|Pay for Bids Won|Pay for Bids Won|   |View Feedback   |   | 
|   ||   |   |   | 
## Landing Page
|Seller Login|Buyer Login|Contact Us|About Us|How it Works|
|---|---|---|---|---|
|Login Form|Login Form|Basic Company Contact|Why we exist|Brief Instructions   |
|   |   |Map|   |FAQ|
|||||