import React from 'react';
import ReactDOM from 'react-dom';
import Newsletter from './components/Newsletter'

import School from './components/School'
import Login from './components/UserLogin'
import { HashRouter, Route, IndexRoute } from 'react-router-dom'




class App extends React.Component{

  // const targetDiv = document.getElementById('app');
render(){
  return(
  <HashRouter>
          <div className='container'>
            <Route exact path="/" component={School} />
             <Route exact path="/newsletters" component={Newsletter} />
          </div>
        </HashRouter>

)
}
}
ReactDOM.render(<App />, document.getElementById('app'))
