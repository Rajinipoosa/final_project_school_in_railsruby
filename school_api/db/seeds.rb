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


s1 = School.create!({name:'My School',description: 'My School opened in 1968 and has excellent accommodation and facilities, including a Food Lab, Dance & Drama Base and School Library.  My School Early Years Hub is also housed in the school building.  The school is set amidst attractive grounds which the children are encouraged to use to extend their learning outdoors.'})
n1 = Newsletter.create!({details:'Sports day Coming Soon',date: DateTime.now(),school_id: s1.id})

 sec1 = Section.create({name: "p1", num_of_students: 20,school_id: s1.id})

 t1 = Teacher.create!({name:"Orr",email: "something@gmail.com",section_id:sec1.id})

 # user1 = User.create!({email:"satish.kura@gmail.com",password:"password"})

  r1 = Report.create!({name:"quaterly",details: "Good",section_id:"sec1.id"})
   
   stu1 = Student.create!({name:"adi",image:'images/child.jpg',section_id:sec1.id,teacher_id: t1.id})
   StudentReport.create!({report_id: r1.id,student_id: stu1.id})

 
