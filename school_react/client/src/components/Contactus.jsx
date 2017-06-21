import React from 'react'
import GoogleMapReact from 'google-map-react';
const Label = ({ text }) => <div>{text}</div>;

class Contactus extends React.Component{
  constructor(props){
       super(props)
      
}
  render(){
    return(
      <div>
        <h1>Contact Us@</h1>
       <p>Wester Broom Place</p>
       <p>EH12 7RT</p>
       <p>4343454646</p>
         
       <div  style={{width: '500px', height: '300px'}}>
       <GoogleMapReact 
     
         defaultCenter={this.props.center}
         defaultZoom={this.props.zoom}
       >
         <Label
           lat={55.937914}
           lng={-3.295366}
           text={'My School'}
         />
       </GoogleMapReact>
       </div>

      </div>)
  }
  
}
Contactus.defaultProps = {
  center: {lat: 55.937914, lng: -3.295366},
  zoom: 12
};


export default Contactus;





