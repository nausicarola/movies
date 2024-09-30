# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Movie.create(name: 'Inception', synopsis: 'A mind-bending thriller', director: 'Christopher Nolan')
Serie1.create(name: 'Breaking Bad', synopsis: 'A high school chemistry teacher turned meth producer', director: 'Vince Gilligan')
DocumentaryFilm.create(name: 'Planet Earth', synopsis: 'A documentary series about the natural world', director: 'David Attenborough')
