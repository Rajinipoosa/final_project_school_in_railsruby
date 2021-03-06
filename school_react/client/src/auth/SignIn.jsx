import React from 'react'

class SignIn extends React.Component {

  constructor(props){
    super(props)
    this.handleOnChangeEmail = this.handleOnChangeEmail.bind(this)
    this.handleOnChangePassword = this.handleOnChangePassword.bind(this)
    this.signIn = this.signIn.bind(this)
    this.state = {
      email:"", 
      password:""
    }
  }

  handleOnChangeEmail(event) {
    console.log(event.target.value)
    this.setState({email: event.target.value})
  }

  handleOnChangePassword(event) {
    this.setState({password: event.target.value})
  }

  signIn(event){
    event.preventDefault()
    const request = new XMLHttpRequest()
    request.open("POST", this.props.url)
    request.setRequestHeader("Content-Type", "application/json")
    request.withCredentials = true

    request.onload = () => { // FAT ARROW! TO RETAIN 'this'
      if(request.status === 201){
        let user = JSON.parse(request.responseText)

        this.props.onSignIn(user)
      }
    }
    const data = {
      user:{
        email:this.state.email,
        password:this.state.password
      }
    }
    request.send(JSON.stringify(data))
  }
  
  render() {
    return (
      <form  className='login-form' >
        <input type="text" onChange={this.handleOnChangeEmail}  placeholder="Email" />
        <input type="password" onChange={this.handleOnChangePassword}  placeholder="Password" />
         
         <br/>

        <button onClick={this.signIn}>  Sign In </button>
      </form>
    )
  }
}

export default SignIn