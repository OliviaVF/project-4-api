[User,Pylon,Listing,Category].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create!(name: "olivia", username: "olivia", email: "olivia@olivia.com", password: "password", password_confirmation: "password")
User.create!(name: "marcus", username: "marcus", email: "marcus@marcus.com", password: "password", password_confirmation: "password")
User.create!(name: "paddy", username: "paddy", email: "paddy@paddy.com", password: "password", password_confirmation: "password")
User.create!(name: "zoya", username: "zoya", email: "zoya@zoya.com", password: "password", password_confirmation: "password")

Category.create!(name: "Amusement Park")
Category.create!(name: "Aquarium")
Category.create!(name: "Art Gallery")
Category.create!(name: "Bar")
Category.create!(name: "Beauty Salon")
Category.create!(name: "Book Store")
Category.create!(name: "Cafe")
Category.create!(name: "Clothing Store")
Category.create!(name: "Dentist")
Category.create!(name: "Department Store")
Category.create!(name: "Doctor")
Category.create!(name: "Electrician")
Category.create!(name: "Furniture Store")
Category.create!(name: "Jewelry Store")
Category.create!(name: "Library")
Category.create!(name: "Movie Theatre")
Category.create!(name: "Museum")
Category.create!(name: "Pet Store")
Category.create!(name: "Restaurant")
Category.create!(name: "Shoe Store")
Category.create!(name: "Spa")
