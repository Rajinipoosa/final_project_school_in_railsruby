import React from 'react';
import {browserHistory} from 'react-router';


class Newsletter extends React.Component {
  constructor(props) {
    super(props);
    this.fetchNewsLetter = this.fetchNewsLetter.bind(this);
    this.state = {
      newsletters: []
    }
  }

  componentDidMount() {
    const request = new XMLHttpRequest()
    
    request.open("GET", "http://localhost:5000/api/users.json")
    request.setRequestHeader("Content-Type", "application/json")
    request.withCredentials = true

    request.onload = () => {

      if(request.status === 200){
        this.fetchNewsLetter();
      }else if(request.status === 401){
        // this.context.router.push('./UserLogin');
       // this.props.history.goBack()
       this.props.history.push('./UserLogin'); 
           
      }
    }
    request.send(null)
  }

  fetchNewsLetter() {

    const request = new XMLHttpRequest()
    request.open("GET", "http://localhost:5000/api/newsletters")
    request.setRequestHeader("Content-Type", "application/json")
    request.withCredentials = true

    request.onload = () => {

      if(request.status === 200){
        console.log('request.responseText', request.responseText)
        const newsletters = JSON.parse(request.responseText)


        this.setState({newsletters: newsletters});


      }
    }
    request.send(null)

  }

  render() {
    let news =  this.state.newsletters.map((newslet,index) => {
        return <div key={index}>{newslet.details}</div>
    })

    return (
      <div>
        <h4>Newsletter</h4>
        <p>Welcome to our Newsletter Page</p>
        {news}
      </div>
      )
  }
}

export default Newsletter;