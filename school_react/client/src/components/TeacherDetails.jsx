import React from 'react';

class TeacherDetails extends React.Component {
  constructor(props) {
    super(props);
    this.fetchSection = this.fetchSection.bind(this);
    this.state = {
      sections: []
    }
  }

  componentDidMount() {
    const request = new XMLHttpRequest()
    
    request.open("GET", "http://localhost:5000/api/users.json")
    request.setRequestHeader("Content-Type", "application/json")
    request.withCredentials = true

    request.onload = () => {

      if(request.status === 200){
        this.fetchSection();
      }else if(request.status === 401){
        //redirect to userlogin
        <UserLogin/>
      }
    }
    request.send(null)
  }

  fetchSection(userid) {

    const request = new XMLHttpRequest()
    request.open("GET", "http://localhost:5000/api/users/userid/sections")
    request.setRequestHeader("Content-Type", "application/json")
    request.withCredentials = true

    request.onload = () => {

      if(request.status === 200){
        console.log('request.responseText', request.responseText)
        const sections = JSON.parse(request.responseText)

        console.log(sections)
        this.setState({sections: sections});


      }
    }
    request.send(null)

  }

  render() {
    let secs =  this.state.sections.map((section,index) => {
        return <div key={index} className="section" >
        <p >{section.name} class and Number of students {section.num_of_students}</p>
              
        </div>
        
    })

    return (
      <div>
        <h4>Welcome to Classes Page</h4>
        {secs}
      </div>
      )
  }
}

export default TeacherDetails;