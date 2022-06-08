# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Clock.destroy_all
Faction.destroy_all
District.destroy_all
Location.destroy_all
Character.destroy_all

Clock.create!([
  { name: "App has many Clocks",
    sections: 4,
    marked: 2,
    description: "The application has many Records and a seeds.db." },
])

Faction.create!([
  { name: "The Church of Ecstasy",
    description: "The 'state religion' in Duskvol",
    hold: "strong",
    situation: "Secret" },
])

District.create!([
  { name: "Barrowcleft",
    wealth: 1,
    security: 3,
    crime: 0,
    occult: 0 },
  { name: "Brightstone",
    wealth: 4,
    security: 4,
    crime: 0,
    occult: 2 },
  { name: "Charhollow",
    wealth: 0,
    security: 2,
    crime: 1,
    occult: 0 },
  { name: "Charterhall",
    wealth: 4,
    security: 4,
    crime: 0,
    occult: 0 },
  { name: "Coalridge",
    wealth: 1,
    security: 1,
    crime: 1,
    occult: 0 },
  { name: "Crow's Foot",
    wealth: 2,
    security: 1,
    crime: 4,
    occult: 2 },
  { name: "The Docks",
    wealth: 2,
    security: 2,
    crime: 2,
    occult: 2 },
  { name: "Dunslough",
    wealth: 0,
    security: 0,
    crime: 2,
    occult: 1 },
  { name: "Nightmarket",
    wealth: 3,
    security: 3,
    crime: 2,
    occult: 1 },
  { name: "Silkshore",
    wealth: 2,
    security: 2,
    crime: 3,
    occult: 1 },
  { name: "Six Towers",
    wealth: 2,
    security: 1,
    crime: 2,
    occult: 3 },
  { name: "White Crown",
    wealth: 4,
    security: 4,
    crime: 0,
    occult: 2 },
])

Location.create!([
  name: "Barrow Bridge",
])


Character.create!([
    name: "Lord Governor",
  ])
  