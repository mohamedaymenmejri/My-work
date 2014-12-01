# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Subject.create(code: 'WSP', name: 'Web server programming', description:'web server with ruby on rails', ca_percent: 100, final_exam_percent: 0)
Subject.create(code: 'ASD', name: 'Agile software Development', description:'testing with unit test and rspec', ca_percent: 100, final_exam_percent: 0)
Subject.create(code: 'IOIS', name: 'InterOrgan Infor System', description:'SAP', ca_percent: 50, final_exam_percent: 50)
Subject.create(code: 'DW', name: 'Data warehousing', description:'develop a data warehouse', ca_percent: 50, final_exam_percent: 50)
Subject.create(code: 'EL', name: 'e-learning', description:'e-learning', ca_percent: 50, final_exam_percent: 50)

