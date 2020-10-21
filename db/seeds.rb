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

17.times do 
  temp_title = Faker::Job.title
  while temp_title.size > 20 do
    temp_title = Faker::Job.title
  end
  temp_company = Faker::Company.name
  while temp_company.size > 22 do 
    temp_company = Faker::Company.name
  end
  temp_job = JobLead.create(user: jim, company: temp_company, link: Faker::Internet.domain_name, date: 20201021 - (rand(0..20)), contact_method: ["email", "phone", "in person"].sample, referral: ["website", "friend", "event"].sample, title: temp_title)
  temp_checklist = Checklist.create(job_lead: temp_job, task_list: [{'Submit Resume': false}, {'Submit Cover Letter': false}, {'Interview': false}])
  temp_contact = Contact.create(name: Faker::Name.name, title: Faker::Job.title, email: Faker::Internet.email, job_lead: temp_job)
end

