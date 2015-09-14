# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

matt = User.create!({ username: "matt" })
patrick = User.create!({ username: 'patrick' })

matts_contact = Contact.create!({user_id: 1, name: "Santa", email: "Kringle@pole.north"})
pats_contact = Contact.create!({user_id: 2, name: "Easter Bunny", email: "Hop@gmail.org"})
matts_contact2 = Contact.create!({user_id: 1, name: "Batman", email: "bruce@wayne.ent"})

shared_contact1 = ContactShare.create!({contact_id: 1, user_id: 2})
# shared_contact1 = ContactShare.create!({contact_id: 2, user_id: 1})


#  contact_id :integer
#  user_id    :integer
