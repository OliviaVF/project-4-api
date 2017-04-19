[User,Pylon,Listing].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create!(name: "olivia", username: "olivia", email: "olivia@olivia.com", password: "password", password_confirmation: "password")
User.create!(name: "marcus", username: "marcus", email: "marcus@marcus.com", password: "password", password_confirmation: "password")
User.create!(name: "paddy", username: "paddy", email: "paddy@paddy.com", password: "password", password_confirmation: "password")
User.create!(name: "zoya", username: "zoya", email: "zoya@zoya.com", password: "password", password_confirmation: "password")
