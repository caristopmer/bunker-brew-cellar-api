# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Style.create(name: "IPA")
Style.create(name: "Light Lager")
Style.create(name: "Pale Ale")
Style.create(name: "Milk Stout")
Style.create(name: "Farmhouse Ale")


Brewery.create(name: "Miller Brewing Company", location: "Milwaukee, WI")
Brewery.create(name: "Dogfish Head Brewing Company", location: "Milton, DE")
Brewery.create(name: "Half Acre Brewing Company", location: "Chicago, IL")
Brewery.create(name: "Left Hand Brewing Company", location: "Longmont, CO")
Brewery.create(name: "New Glarus Brewing Company", location: "New Glarus, WI")


Beer.create(
	name: "Miller Lite",
	brewery_id: Brewery.find_by(name: "Miller Brewing Company").id,
	quantity: 5,
	style: Style.find_by(name: "Light Lager"),
	description: "A delicious light beer."
)
Beer.create(
	name: "120 Minute IPA",
	brewery_id: Brewery.find_by(name: "Dogfish Head Brewing Company").id,
	quantity: 2,
	style: Style.find_by(name: "IPA"),
	description: "A delicious and rare IPA for the true hop-heads."
)
Beer.create(
	name: "Daisy Cutter",
	brewery_id: Brewery.find_by(name: "Half Acre Brewing Company").id,
	quantity: 11,
	style: Style.find_by(name: "Pale Ale"),
	description: "A tasty-ass pale ale."
)
Beer.create(
	name: "Nitro",
	brewery_id: Brewery.find_by(name: "Left Hand Brewing Company").id,
	quantity: 3,
	style: Style.find_by(name: "Milk Stout"),
	description: "A creamy and delicious nitro-infused milk stout."
)
Beer.create(
	name: "Spotted Cow",
	brewery_id: Brewery.find_by(name: "New Glarus Brewing Company").id,
	quantity: 9,
	style: Style.find_by(name: "Farmhouse Ale"),
	description: "Wisconsin's famous wheaty bovine brew."
)