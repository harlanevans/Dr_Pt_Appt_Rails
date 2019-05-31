@sex = ["M", "F"]

10.times do 
  Patient.create(
  first_name: Faker::Movies::LordOfTheRings.character,
  last_name: Faker::TvShows::GameOfThrones.house,
  age: Faker::Number.between(18, 100),
  sex: @sex.sample
  )
end

10.times do 
  Doctor.create(
    name: Faker::Movies::StarWars.character,
    profession: Faker::Job.title
  )
end

puts "seeded"

