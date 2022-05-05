# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = City.create(name: 'Bangkok')
c2 = City.create(name: 'Paris')
c3 = City.create(name: 'Monaco')


s1 = Specialty.create(name: 'Gynécologue')
s2 = Specialty.create(name: 'Vaudou')
s3 = Specialty.create(name: 'Ophtalomogue')


d1 = Doctor.create(first_name: 'Jean', last_name: 'Mouloud', zip_code: '75016', city: c1)
d2 = Doctor.create(first_name: 'René', last_name: 'Lataupe', zip_code: '75018', city: c1)
d3 = Doctor.create(first_name: 'Pablo', last_name: 'Escobar', zip_code: '75017', city: c1)

spec1 = SpecialtyDoctor.create(doctor:d1,specialty:s1)
spec2 = SpecialtyDoctor.create(doctor:d1,specialty:s2)
spec3 = SpecialtyDoctor.create(doctor:d1,specialty:s3)

p1 = Patient.create(first_name: 'Ayah', last_name: 'Tollah')
p2 = Patient.create(first_name: 'Marie', last_name: 'Cinphiltre')
p3 = Patient.create(first_name: 'Roger', last_name: 'Dat')

a1 = Appointment.create(date: '11/02/22', doctor: d1, patient: p1 )
a2 = Appointment.create(date: '12/02/22', doctor: d2, patient: p2 )
a3 = Appointment.create(date: '13/02/22', doctor: d3, patient: p1 )

appts = Appointment.all

appts.each do |appt|
    puts appt.doctor.first_name
end

doctors = c1.doctors

doctors.each do |doctor|
    puts doctor.first_name
end

spec = d1.specialties

spec.each do |s|
    puts s.name
end



