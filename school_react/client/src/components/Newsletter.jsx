import React from 'react';


class Newsletter extends React.Component{

 constructor(props){
  super(props)
  this.state ={
    newsletters: [],


 }

render(){

  const newsNodes= this.props.newsletters.map((school,index) =>{
    console.log(school);
    
      return <div key={index} className="listing">{school.newsletters}</div>
      });

    return (<div>{newsNodes}</div>);


  
}
    
  



}

export default Newsletter;