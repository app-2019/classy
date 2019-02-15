# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Take the database tables back to zero records
Course.destroy_all
Student.destroy_all

@app = Course.create(
  identifier: 'COM 330',
  title: 'Web Application Development',
  term: 'Spring',
  year: 2019,
  github_org: 'app-2019',
  site_url: 'https://courses.karlstolley.com/app/'
)
@hci = Course.create(
  identifier: 'ITMD 362',
  title: 'Human-Computer Interaction and Web Design',
  term: 'Spring',
  year: 2019,
  github_org: 'itmd-362-2019',
  site_url: 'https://courses.karlstolley.com/hci/'
)
Student.create(
  [
    {first_name:"Jenny",last_name:"Webapp",email_address:"jenny@hawk.example.com",github_username:"jenny_github",courses:[@app]},
    {first_name:"Herman",last_name:"See-Eye",email_address:"herman@hawk.example.com",github_username:"herman_github",courses:[@hci]},
    {first_name:"Melvin",last_name:"Ambition",email_address:"melvin@hawk.example.com",github_username:"melvin_github",courses:[@app,@hci]}
  ]
)
