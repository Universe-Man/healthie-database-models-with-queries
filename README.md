# README

Hello Healthie Team!!

I'm Ian Pollack and thank you for reviewing my Database and Model Design with Queries assessment!

I setup this project using "rails new" and created my models with "rails g model Doctor" with all applicable classes and their attributes. I also manually added the models' relationships (has_many, belongs_to, etc.) and added a couple of indexes for Doctor and Patient attributes that will likely be used to search. It is worth noting that prior to writing any code, I mapped out my models and their relationships and attributes on paper, as I typically do when starting a new project or product from scratch; I'd be happy to show you this rough draft map if requested during a review interview.

It is also worth noting that I did use Google and the Rails Docs to reconfirm these commands and code structure, but implemented this code myself.

To run this application:
- Run "bundle install" to ensure all dependencies are installed.
- Run "rails db:migrate" to run the migration files and setup the database tables from the schema.
- Run "rails db:seed" to run the seed file and populate our database with the dummy data in the seeds file.
  - Seed file will create:
    - Five Doctors
    - Five Patients
    - Eight Plans (linking Doctors and Patients)
    - Fifteen Journal Entries
- Run "rails console" (rails c) to open up the console where we will run our queries.
- Query Commands:
  - You will need to use a Doctor's or Patient's name or id to make a query with them. You can find them in the seeds.rb file, but I will list them here as well:
    (ex: Model: <name>, <id>)
    - Doctors:
      - Dr. Jeff, 1
      - Dr. Ken, 2
      - Dr. Amy, 3
      - Dr. Alison, 4
      - Dr. Robert, 5
    - Patients:
      - Mark, 1
      - Albert, 2
      - Peter, 3
      - Lisa, 4
      - Amanda, 5
  * If for whatever reason, these IDs are not matching with what is in your database, you can run "rails db:reset", or "rails db:drop" and then "rails db:migrate" and "rails db:seed", if you prefer manual steps. You can also, inside the rails console, run "Doctor.all" or "Patient.all" to get a response with all the Doctors and Patients in the database (from the seeds file).

  QUERIES (listing two queries, one with "name" and the other with "id"):
  1. Find all Patients for a particular Doctor:
    - Name: Patient.joins(:plans).where(plans: {doctor_id: Doctor.where(name: "Dr. Jeff")})
    - ID: Patient.joins(:plans).where(plans: {doctor_id: Doctor.where(id: 1)})
  2. Find all Doctors for a particular Patient:
    - Name: Doctor.joins(:plans).where(plans: {patient_id: Patient.where(name: "Mark")})
    - ID: Doctor.joins(:plans).where(plans: {patient_id: Patient.where(id: 1)})
  3. Find all of a particular Patient's Journal Entries, sorted by date posted (created):
    - Name: JournalEntry.where(patient_id: Patient.where(name: "Mark")).order(:created_at)
    - ID: JournalEntry.where(patient_id: Patient.where(id: 1)).order(:created_at)
  4. Find all the Journal Entries of all the Patients of a particular Doctor, sorted by date posted (created):
    ** These queries will include all Journal Entries for written by a Patient, regardless of how many Doctors they have and for which Doctor/Plan they wrote this Journal Entry under. To fix this I have amended my code by adding a plan_id to a Journal Entry.
    - Name: JournalEntry.where(patient_id: Patient.joins(:plans).where(plans: {doctor_id: Doctor.where(name: "Dr. Jeff")}).ids)
    - ID: JournalEntry.where(patient_id: Patient.joins(:plans).where(plans: {doctor_id: Doctor.where(id: 1)}).ids)
    ** I'm making an assumption that we do not want to return any journal entries for a Patient written for another Doctor. (Ex: If a Patient has 3 Journal Entries, 2 for this Doctor, and 1 for another Doctor, we are only returning the 2 Journal Entries written for this Doctor.) **
    - Name: JournalEntry.where(plan_id: Plan.where({doctor_id: Doctor.where(name: "Dr. Jeff"), patient_id: Patient.where(name: "Mark")}))
    - ID: JournalEntry.where(plan_id: Plan.where({doctor_id: 1, patient_id: 1}))
    

Files you should care about (the rest is boilerplate from rails new):

- Models:
  - /app/models/doctor.rb
  - /app/models/patient.rb
  - /app/models/plan.rb
  - /app/models/journal_entry.rb

- Database:
  - /db/migrate/* (all the migration files from the models above)
  - /db/schema.rb (auto generated but the DB schema for the tables of the models)
  - /db/seeds.rb (created dummy data for query testing)

Disclaimer: Opted to not include tests since it didn't seem necessary, but I can elaborate on this is required.

Please let me know if you have any questions! Looking forward to your feedback!
