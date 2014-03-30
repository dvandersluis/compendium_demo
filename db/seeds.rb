# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
entertainment = SpendingCategory.create(name: 'Entertainment')
food = SpendingCategory.create(name: 'Food')
rent = SpendingCategory.create(name: 'Rent')
utilities = SpendingCategory.create(name: 'Utilties')

Spending.record_timestamps = false
Spending.create(created_at: '2014-01-01', category: rent, amount: 1000)
Spending.create(created_at: '2014-01-03', category: utilities, amount: 90.74)
Spending.create(created_at: '2014-01-02', category: food, amount: 152.68)
Spending.create(created_at: '2014-01-05', category: entertainment, amount: 58.9)
Spending.create(created_at: '2014-01-06', category: food, amount: 89.93)
Spending.create(created_at: '2014-01-15', category: food, amount: 92.59)
Spending.create(created_at: '2014-01-23', category: food, amount: 7.12)
Spending.create(created_at: '2014-01-24', category: entertainment, amount: 75)
Spending.create(created_at: '2014-01-24', category: food, amount: 302.95)
Spending.create(created_at: '2014-02-01', category: rent, amount: 1000)
Spending.create(created_at: '2014-02-03', category: utilities, amount: 90.74)
Spending.create(created_at: '2014-02-07', category: food, amount: 93.96)
Spending.create(created_at: '2014-02-08', category: entertainment, amount: 13.32)
Spending.create(created_at: '2014-02-09', category: entertainment, amount: 26.59)
Spending.create(created_at: '2014-02-18', category: food, amount: 68.73)
Spending.create(created_at: '2014-02-24', category: food, amount: 80.02)
Spending.create(created_at: '2014-03-01', category: rent, amount: 1000)
Spending.create(created_at: '2014-03-02', category: food, amount: 193.35)
Spending.create(created_at: '2014-03-03', category: utilities, amount: 90.74)
Spending.create(created_at: '2014-03-11', category: food, amount: 83.92)
Spending.create(created_at: '2014-03-12', category: entertainment, amount: 9.83)
Spending.create(created_at: '2014-03-17', category: food, amount: 50.78)
Spending.create(created_at: '2014-03-18', category: entertainment, amount: 123.59)
Spending.create(created_at: '2014-03-29', category: food, amount: 173.75)
Spending.record_timestamps = true