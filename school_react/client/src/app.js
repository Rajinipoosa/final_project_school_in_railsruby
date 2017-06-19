import React from 'react';
import ReactDOM from 'react-dom';
import School from './components/School'
import Newsletter from './components/Newsletter'
import Contactus from './components/Contactus'
import UserLogin from './components/UserLogin'
import StudentDetails from './components/StudentDetails'

import Main from './components/Main'

import { HashRouter, Route, IndexRoute } from 'react-router-dom'
class App extends React.Component{

  // const targetDiv = document.getElementById('app');
render(){
  return(
  <HashRouter>
          <div className='container'>
            <Route path="/" component={Main} />
            <Route exact path="/" component={School} />
            <Route path="/Newsletter" component={Newsletter}/>
            <Route path="/UserLogin" component={UserLogin}/>
            <Route path="/StudentDetails" component={StudentDetails}/>
            
            <Route path="/Contactus" component={Contactus}/>
           
          </div>
        </HashRouter>

)
}
}
ReactDOM.render(<App />, document.getElementById('app'))
