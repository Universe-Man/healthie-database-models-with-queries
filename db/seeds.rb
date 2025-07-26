# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


jeff = Doctor.create(name: "Dr. Jeff", email: "jeff@doctor.com")
ken = Doctor.create(name: "Dr. Ken", email: "ken@doctor.com")
amy = Doctor.create(name: "Dr. Amy", email: "amy@doctor.com")
alison = Doctor.create(name: "Dr. Alison", email: "alison@doctor.com")
robert = Doctor.create(name: "Dr. Robert", email: "robert@doctor.com")

mark = Patient.create(name: "Mark", email: "mark@patient.com")
albert = Patient.create(name: "Albert", email: "albert@patient.com")
peter = Patient.create(name: "Peter", email: "peter@patient.com")
lisa = Patient.create(name: "Lisa", email: "lisa@patient.com")
amanda = Patient.create(name: "Amanda", email: "amanda@patient.com")

Plan.create(plan_type: "basic", patient_id: mark.id, doctor_id: jeff.id)
Plan.create(plan_type: "basic", patient_id: albert.id, doctor_id: ken.id)
Plan.create(plan_type: "premium", patient_id: peter.id, doctor_id: amy.id)
Plan.create(plan_type: "premium", patient_id: lisa.id, doctor_id: alison.id)
Plan.create(plan_type: "basic", patient_id: amanda.id, doctor_id: robert.id)
Plan.create(plan_type: "premium", patient_id: amanda.id, doctor_id: amy.id)
Plan.create(plan_type: "premium", patient_id: peter.id, doctor_id: jeff.id)
Plan.create(plan_type: "basic", patient_id: mark.id, doctor_id: ken.id)

JournalEntry.create(content: "I'm Mark, and things are good!", patient_id: mark.id)
JournalEntry.create(content: "I'm Albert, and I feel sick!", patient_id: albert.id)
JournalEntry.create(content: "I'm Peter, and things are good!", patient_id: peter.id)
JournalEntry.create(content: "I'm Mark, and I'm cured!!!", patient_id: mark.id)
JournalEntry.create(content: "I'm Peter, and I feel sick!", patient_id: peter.id)
JournalEntry.create(content: "I'm Peter, and my back hurts!", patient_id: peter.id)
JournalEntry.create(content: "I'm Lisa, and things are good!", patient_id: lisa.id)
JournalEntry.create(content: "I'm Mark, and my back hurts!", patient_id: mark.id)
JournalEntry.create(content: "I'm Amanda, and I'm cured!!!", patient_id: amanda.id)
JournalEntry.create(content: "I'm Lisa, and I feel sick!", patient_id: lisa.id)
JournalEntry.create(content: "I'm Peter, and I feel sick!", patient_id: peter.id)
JournalEntry.create(content: "I'm Albert, and things are good!", patient_id: albert.id)
JournalEntry.create(content: "I'm Amanda, and things are good!", patient_id: amanda.id)
JournalEntry.create(content: "I'm Lisa, and I'm cured!!!", patient_id: lisa.id)
JournalEntry.create(content: "I'm Peter, and I'm cured!!!", patient_id: peter.id)