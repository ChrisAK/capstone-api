# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'original-pokemon.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  t = Pokemon.new
  t.number = row['Number']
  t.name = row['Name']
  t.type1 = row['Type 1']
  t.type2 = row['Type 2']
  t.totalStats = row['Total']
  t.hp = row['HP']
  t.attack = row['Attack']
  t.defense = row['Defense']
  t.sp_attack = row['Sp. Atk']
  t.sp_defense = row['Sp. Def']
  t.speed = row['Speed']
  t.generation = row['Generation']
  t.legendary = row['Legendary']
  t.image = row['Image']
  t.save
  puts "#{t.name}, #{t.number} saved"
end

puts "There are now #{Pokemon.count} rows in the transactions table"
