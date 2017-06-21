import React from 'react'
import {Link} from 'react-router-dom'
import UserLogin from './UserLogin'
import Contactus from './Contactus'
import Newsletter from './Newsletter'
import StudentDetails from './StudentDetails'
import TeacherDetails from './TeacherDetails'


const Main = () => (
  <div ><ul className="nav"> 
  <li><Link to="/Newsletter">Newsletter</Link></li>
  <li><Link to="/StudentDetails">StudentDetails</Link></li>
  <li><Link to="/TeacherDetails">TeacherDetails</Link></li>
 
  <li><Link to="/Contactus">Contactus</Link></li>
  <li><Link to="/UserLogin">UserLogin</Link></li>
 
  </ul></div>
)

export default Main;
