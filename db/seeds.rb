# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(email: "fcoulloudon@gmail.com", password: "123456")
user1.save

customer1 = Customer.create!(client_name: "2")
customer1.save

customer2 = Customer.create!(client_name: "Nutriset")
customer2.save
customer3 = Customer.create!(client_name: "Bressor")
customer3.save
customer4 = Customer.create!(client_name: "Deltech")
customer4.save
customer5 = Customer.create!(client_name: "Hutchinson")
customer5.save


replacement1 = Replacement.create!(contact_first_name: "Jean", contact_last_name: "Claude", customer_id: '2', description: "Ceci est un retour", return_content: "Une tablette, 1 module", tablet_number: "1324, 1233", internal_message: "Aid prend en charge", received_date: "28/10/2021", received_tracking: "ETFJRHG", tested: "true", replacement_number: "1203, 1123")
replacement1.save
Replacement.create!(description: "description", contact_client: "JFE455", contact_first_name: "Paul", contact_last_name: "Smith", contact_email: "paul.smith@gmail.com", contact_phone: "0303030303", customer_id: "6", return_content: "Tablette", tablet_number: "455642", internal_message: "okok", received_date: "210320", received_tracking: "kokok", tested: "yes", replacement_number: "45464", tested: "yes", to_bill: "no", owner_id:1)
