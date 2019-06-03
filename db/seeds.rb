@sex = ["M", "F"]
@doctors = []
@patients = []
# @id_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
@id_array = *(1..10)


  10.times do 
  @p = Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name ,
    age: Faker::Number.between(18, 100),
    sex: @sex.sample
    )
    # @patients.push(@p) 
  end
    
    # binding.pry
    
10.times do 
  @d = Doctor.create(
    name: Faker::Name.name,
    profession: Faker::Job.field
    )
    # @doctors.push(@d)
  end
      
      # binding.pry

rand(5..30).times do 
  Appt.create(
    date: Faker::Date.forward(60).to_date,
    time: Faker::Time.forward(2, :morning),
    # patient_id: (Patient.all.collect { |p| [p.id] }).sample,
    # doctor_id: (Doctor.all.collect { |d| [d.id] }).sample
    patient_id: @id_array.sample,
    doctor_id: @id_array.sample
    )
  end
        

puts "seeded"

