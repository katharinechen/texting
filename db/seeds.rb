#Create Users 
User.create(email: "katharinechen.ny@gmail.com", password: "123456789", phone: "6469121893")
User.create(email: "bobmiller@gmail.com", password: "abcdefghi", phone: "1231231234")
User.create(email: "susanmiller@gmail.com", password: "georgeandsusan", phone: "1234567890")

#Create Contacts 
Contact.create(user_id: "1", full_name: "Bob Rubenstein", phone_number: "9876541234", address: "123 SW Lowell Lane")
Contact.create(user_id: "1", full_name: "David Miller", phone_number: "6786786789", address: "456 NW Couch Street")

