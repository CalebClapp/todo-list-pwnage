# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

work_list = List.create(:name => 'Work Tasks Today')
grocery_list = List.create(:name => 'Groceries to Buy')
chores_list = List.create(:name => 'Chores to get Done')

work_list.save!
grocery_list.save!
chores_list.save!

work = [
  ['compute stuff', 5, true],
  ['take long lunch', 10, false],
  ['go to meeting', 7, false],
  ['bring headphones', 8, false]
]
groceries = [
  ['hamburgers', 5, true],
  ['funyuns', 10, false],
  ['ice cream', 7, false],
  ['romaine lettuce', 8, false],
  ['bagel bites', 7, false]
]
chores = [
  ['move couch', 5, true],
  ['do dishes', 10, false],
  ['pretend to vacuum', 7, false],
  ['scrub kitchen floor', 8, false],
  ['clean cupboard', 7, false]
]

work.each do |t,p,c|
  i = Item.create(:list_id => work_list.id, :text => t, :priority => p, :is_complete => c)
  i.save!
end

groceries.each do |t,p,c|
  i = Item.create(:list_id => grocery_list.id, :text => t, :priority => p, :is_complete => c)
  i.save!
end

chores.each do |t,p,c|
  i = Item.create(:list_id => chores_list.id, :text => t, :priority => p, :is_complete => c)
  i.save!
end
