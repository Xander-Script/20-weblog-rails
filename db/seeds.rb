# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

roles = {}

%w[admin author customer member].each do |role|
  roles[role.to_sym] = Role.create!({ name: role })

  User.create!({ name: role,
                 email: "#{role}@example.org",
                 password: 'password',
                 roles: [roles[role.to_sym]] })
end

100.times do
  User.create!({ name: Faker::Name.name,
                 email: Faker::Internet.unique.email,
                 password: 'password',
                 roles: [roles[roles.keys.sample]] })
end
