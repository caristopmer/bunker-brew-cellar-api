# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Style.create(name: "IPA")
Style.create(name: "Light Lager")

Brewery.create(name: "Miller Brewing Company", location: "Milwaukee, WI")
Brewery.create(name: "Dogfish Head Brewing Company", location: "Milton, DE")

Beer.create(
	name: "Miller Lite",
	brewery_id: Brewery.find_by(name: "Miller Brewing Company").id,
	quantity: 6,
	style: Style.find_by(name: "Light Lager"),
	description: "A delicious light beer."
)

Beer.create(
	name: "120 Minute IPA",
	brewery_id: Brewery.find_by(name: "Dogfish Head Brewing Company").id,
	quantity: 6,
	style: Style.find_by(name: "IPA"),
	description: "A delicious and rare IPA for the true hop-heads."
)