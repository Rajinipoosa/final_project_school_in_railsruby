import React from 'react';
import Newsletter from './Newsletter'
import { Link, Router } from 'react-router-dom'
import UserLogin from './UserLogin';




class School extends React.Component{
   constructor(props){
      super(props)
      this.state ={
        schools: []
        
      }
   }

   componentDidMount(){
     var url = 'http://localhost:5000/api/schools'
     var request = new XMLHttpRequest()
     request.open('GET', url)

     request.setRequestHeader('Content-Type', "application/json")
     request.withCredentials = true
      
     request.onload = () => {
        if(request.status === 200){
         console.log("request: ", request.responseText);
         var data = JSON.parse(request.responseText);
         console.log(data)
         this.setState( { schools: data } )
        // } else{
        //  console.log("Uh oh you're not logged in!")
         
         }
     }
     request.send(null)
   }

  render(){

    const newsNodes= this.state.schools.map((school,index) =>{
      
      return (<div key={index} className="listing">
        <h1>{school.name}</h1> 
          
       

       {school.description}
       
      </div>
         
      )});

    return (<div>{newsNodes}
      </div>
      );

    }
      

     
   
  
}
export default School;
