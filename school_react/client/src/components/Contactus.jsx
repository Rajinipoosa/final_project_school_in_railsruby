import React from 'react'
import GoogleMapReact from 'google-map-react';
const AnyReactComponent = ({ text }) => <div>{text}</div>;

class Contactus extends React.Component{
   constructor(props){
    super(props)
    this.state = {
      center: {lat: 52.93, lng: -3.29},
      zoom: 11
    
  }
}
  

  render(){
    return(
      <div className="contact">
        <h1>Contact Us@</h1>
       <p>Wester Broom Place</p>
       <p>EH12 7RT</p>
       <p>4343454646</p>
     
     <GoogleMapReact className = "gmap"
     
       defaultCenter={this.state.center}
       defaultZoom={this.state.zoom}
     >
       <AnyReactComponent
         lat={55.937914}
         lng={-3.295366}
         text={'Edinburgh'}
       />
     </GoogleMapReact>
      </div>)
  }
  
}

export default Contactus;





