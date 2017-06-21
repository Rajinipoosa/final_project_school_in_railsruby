import React from 'react';
import { Link, Route } from 'react-router-dom'


class School extends React.Component{
 constructor(props){
  super(props)
  this.state ={
    schools: []

  }
 
}

componentDidMount(){
 var url = 'http://localhost:5000/api/schools.json'
 var request = new XMLHttpRequest()
 request.open('GET', url)

 request.setRequestHeader('Content-Type', "application/json")
 request.withCredentials = true

 request.onload = () => {
  if(request.status === 200){
   
   var data = JSON.parse(request.responseText);
  
   this.setState( { schools: data 
                    } )

 }
}
request.send(null)
}

render(){
  
  const newsNodes= this.state.schools.map((school,index) =>{
      
    return (<div key={index} className="listing">
      <h1>{school.name}</h1> 
   
      
      <div className ='descrip'>{school.description}</div>
   
      </div>

      )});
  

  return (<div>{newsNodes} </div>);

  
}

}
export default School;
