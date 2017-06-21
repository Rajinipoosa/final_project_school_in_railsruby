import React from 'react'
import { Link, Route } from 'react-router-dom'


class  StudentDetails extends React.Component{
 constructor(props) {
  super(props);
  this.fetchstudentDetails = this.fetchstudentDetails.bind(this);
  this.state = {
    studentDetails: [],
    reportDetails: []
  }
}

componentDidMount() {
  const request = new XMLHttpRequest()
  
  request.open("GET", "http://localhost:5000/api/users.json")
  request.setRequestHeader("Content-Type", "application/json")
  request.withCredentials = true

  request.onload = () => {

    if(request.status === 200){
      this.fetchstudentDetails();
      

    }else if(request.status === 401){
          //redirect to userlogin
          <p><Link to= '/UserLogin'>Please Login</Link></p>
        }
      }
      request.send(null)
    }

    fetchstudentDetails(userid) {


      const request = new XMLHttpRequest()
      request.open("GET", "http://localhost:5000/api/users/userid/students")
      request.setRequestHeader("Content-Type", "application/json")
      request.withCredentials = true

      request.onload = () => {

        if(request.status === 200){
          console.log('request.responseText', request.responseText)
          const studentDetails = JSON.parse(request.responseText)

          
          this.setState({studentDetails: studentDetails});
          
        }
      }
      request.send(null)

    }
    
    render() {
      let secs =  this.state.studentDetails.map((student,index) => {
        return <div key={index}  >
        <ul className="studentd">
        <li>Name: {student.name}</li>
        <br/>
        <li><img src ={student.image} width = '30%' height = '30%'/></li>
        
        
        { student.reports.map((report, index) => {

          return   <ul className="reportsd" key={index}>   <li> Reports: {report.details}</li> </ul>
          
          
        })}
        
        
        

        </ul>
        
        </div>
        
      })

      return (
        <div>
        <h4>Student Details</h4>
        {secs}
        </div>
        )
    }
  }

  export default StudentDetails;
