# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.delete_all
Customer.create!(
	name: 'Harry',
	uid: '1',
	password: 'foo',
	email: 'hwgilling@gmail.com',
	mobile: '510-517-8352',
	payment_type: 'play_credit_card',
	payment_id: '123456'
	)
Customer.create!(
	name: 'John',
	uid: '2',
	password: 'foo',
	email: 'hwgilling@gmail.com',
	mobile: '510-517-8352',
	payment_type: 'play_credit_card',
	payment_id: '234567'
	)
Customer.create!(
	name: 'Joan',
	uid: '3',
	password: 'foo',
	email: 'hwgilling@gmail.com',
	mobile: '510-517-8352',
	payment_type: 'play_credit_card',
	payment_id: '345678'
	)

MenuItem.delete_all
MenuItem.create!(
	name: 'coffee',
	size: 'S',
	cost: '1.00'
	)
MenuItem.create!(
	name: 'coffee',
	size: 'M',
	cost: '2.00'
	)
MenuItem.create!(
	name: 'coffee',
	size: 'L',
	cost: '3.00'
	)
MenuItem.create!(
	name: 'coffee',
	size: 'XL',
	cost: '4.00'
	)

MenuItem.create!(
	name: 'espresso',
	size: 'S',
	cost: '1.00'
	)
MenuItem.create!(
	name: 'espresso',
	size: 'L',
	cost: '2.00'
	)

MenuItem.create!(
	name: 'cappuccino',
	size: 'S',
	cost: '1.00'
	)
MenuItem.create!(
	name: 'cappuccino',
	size: 'M',
	cost: '2.00'
	)
MenuItem.create!(
	name: 'cappuccino',
	size: 'L',
	cost: '3.00'
	)
MenuItem.create!(
	name: 'cappuccino',
	size: 'XL',
	cost: '4.00'
	)

MenuItem.create!(
	name: 'latte',
	size: 'S',
	cost: '4.00'
	)

MenuItem.create!(
	name: 'latte',
	size: 'M',
	cost: '4.00'
	)

MenuItem.create!(
	name: 'latte',
	size: 'L',
	cost: '4.00'
	)

MenuItem.create!(
	name: 'latte',
	size: 'XL',
	cost: '4.00'
	)

