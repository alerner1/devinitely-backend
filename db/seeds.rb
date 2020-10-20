# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all
Checklist.destroy_all
Note.destroy_all
JobLead.destroy_all
User.destroy_all


jim = User.create(first_name: "Jim", last_name: "Ferdous", email: "1234@gmail.com", password: "1234", activities: 0)
job1 = JobLead.create(user: jim, company: "google", link: "google.com", date: 20200901, contact_method: "email", referral: "website", title: "CEO")

17.times do 
  temp_job = JobLead.create(user: jim, company: Faker::Company.name, link: Faker::Internet.domain_name, date: 20201031 - (rand(0..30)), contact_method: ["email", "phone", "in person"].sample, referral: ["website", "friend", "event"].sample, title: Faker::Job.title)
  temp_checklist = Checklist.create(job_lead: temp_job, task_list: [])
  temp_contact = Contact.create(name: Faker::Name.name, title: Faker::Job.title, email: Faker::Internet.email, job_lead: temp_job)
end

big_boss = Contact.create(name: "sergei", title: "CTO", email: "anemail@gmail.com", job_lead: job1)
to_dos = Checklist.create(job_lead: job1, task_list: [])
my_note = Note.create(job_lead: job1, content: "lorem ipsum dolor sit amet")