# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Newsletter.delete_all()
Section.delete_all()
Student.delete_all()
Teacher.delete_all()
Report.delete_all()
School.delete_all()
User.delete_all()
StudentReport.delete_all()



s1 = School.create!({name:'My School',description: 'My School opened in 1968 and has excellent accommodation and facilities, including a Food Lab, Dance & Drama Base and School Library.  My School Early Years Hub is also housed in the school building.  The school is set amidst attractive grounds which the children are encouraged to use to extend their learning outdoors.'})
n1 = Newsletter.create!({details:'It was lovely to see so many parents attending our Christmas concerts, nativity performances and
of course our P5 panto before the Christmas holidays. The children all performed wonderfully.
I would like to take the opportunity to remind parents to please send in an appropriate coat and
shoes or wellies for your child to wear at break and lunchtime. Wellies are a really sensible option
as our school playground does get muddy at this time of the year.
Please also remind your child to bring their water bottle to school every day.',date: DateTime.now(),school_id: s1.id})

 


 # user1 = User.create!({email:"satish.kura@gmail.com",password:"password"})
  u1 = User.create!(email: "adi@home.com", password: "password")
  u2 = User.create!(email: "rajji@home.com", password: "password")


  t1 = Teacher.create!({name:"Orr",email: "something@gmail.com",image:'images/teacher1.jpeg'})
  t2 = Teacher.create!({name:"Simson",email: "something@gmail.com",image:'images/teacher2.jpg'})

  sec1 = Section.create!({name: "p1", num_of_students: 20,school_id: s1.id, user_id:u1.id, teacher_id:t1.id})
  sec1 = Section.create!({name: "p2", num_of_students: 20,school_id: s1.id, user_id:u2.id,teacher_id:t2.id})
  
  

  r1 = Report.create!({name:"quaterly",details: "Well mannered",ratings:"5star",section_id:"sec1.id"})
  r2 = Report.create!({name:"quaterly",details: "Naught",ratings:"4star",section_id:"sec1.id"})

   
   stu1 = Student.create!({name:"Virat",image:'images/boy.jpg',section_id:sec1.id,teacher_id: t1.id, user_id:u1.id})
   stu2 = Student.create!({name:"Deeva",image:'images/deeva.jpg',section_id:sec1.id,teacher_id: t1.id, user_id:u1.id})

   stu3 = Student.create!({name:"Aditri",image:'images/aditri.jpg',section_id:sec1.id,teacher_id: t1.id, user_id:u1.id})
  

   StudentReport.create!({section_id:sec1.id,report_id: r1.id,student_id: stu1.id})

   StudentReport.create!({section_id:sec1.id,report_id: r2.id,student_id: stu2.id})
  
   StudentReport.create!({section_id:sec1.id,report_id: r2.id,student_id: stu3.id})
