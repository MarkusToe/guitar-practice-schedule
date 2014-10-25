# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Key.delete_all
Category.delete_all
Exercise.delete_all

keyC = Key.create({name: "C"})
keyD = Key.create({name: "D"})
keyE = Key.create({name: "E"})

catScales = Category.create({name: "Scales", last_practiced: Date.today - 2})
catChords = Category.create({name: "Chords", last_practiced: Date.today - 3})
catRythm = Category.create({name: "Rythm", last_practiced: Date.today - 4})

Exercise.create({
                    name: "Major Scale",
                    last_practiced: Time.now - 10,
                    tempo: 80,
                    time: 20,
                    note: "Patterns",
                    key: keyC,
                    category: catScales
                })

Exercise.create({
                    name: "Minor Scale",
                    last_practiced: Time.now - 8,
                    tempo: 80,
                    time: 20,
                    note: "Patterns",
                    key: keyD,
                    category: catScales
                })

Exercise.create({
                    name: "Triads",
                    last_practiced: Time.now - 7,
                    tempo: 80,
                    time: 20,
                    note: "Patterns",
                    key: keyE,
                    category: catChords
                })

Exercise.create({
                    name: "Progressions",
                    last_practiced: Time.now,
                    tempo: 100,
                    time: 20,
                    note: "Patterns",
                    key: keyC,
                    category: catChords
                })

Exercise.create({
                    name: "Rythmic Study",
                    last_practiced: Time.now,
                    tempo: 100,
                    time: 20,
                    note: "Patterns",
                    key: keyE,
                    category: catRythm
                })