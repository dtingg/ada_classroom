import React, { Component } from 'react';
import  './SignupForm.css';

class SignupForm extends Component {
  constructor() {
    super();

    this.state = {
      firstName: "",
      lastName: "",
      email: "",
      password: "",
    }
  }

  onFirstNameChange = (event) => {
    console.log(`First Name Field updated ${event.target.value}`);
    this.setState({
      firstName: event.target.value,
    });
  }

  onLastNameChange = (event) => {
    console.log(`Last Name Field updated ${event.target.value}`);
    this.setState({
      lastName: event.target.value,
    });
  }

  onEmailChange = (event) => {
    console.log(`Email Field updated ${event.target.value}`);
    this.setState({
      email: event.target.value,
    });
  }

  onPasswordChange = (event) => {
    console.log(`Password updated ${event.target.value}`);
    this.setState({
      password: event.target.value,
    });
  }

  onFormSubmit = (event) => {
    event.preventDefault();
  
    const newStudent = {
      firstName: this.state.firstName,
      lastName: this.state.lastName,
      email: this.state.email,
      password: this.state.password,
    };

    this.setState({
      firstName: '',
      lastName: "",
      email: '',
      password: ""
    });

    console.log(newStudent)

    // this.props.addStudentCallback(newStudent);
  }

  render() {
    return (
      <form className="signup-form" onSubmit={this.onFormSubmit}>
        <div>
          <label htmlFor="firstName">First Name:</label>
          <input onChange={this.onFirstNameChange} value={this.state.firstName} name="firstName" />
        </div>
        <div>
          <label htmlFor="lastName">Last Name:</label>
          <input onChange={this.onLastNameChange} value={this.state.lastName} name="lastName" />
        </div>
        <div>
          <label htmlFor="email">Email:</label>
          <input onChange={this.onEmailChange} value={this.state.email} name="email" />
        </div>
        <div>
          <label htmlFor="password">Password:</label>
          <input onChange={this.onPasswordChange} value={this.state.password} name="password" />
        </div>
        <input
          type="submit"
          value="Create account"
        />
      </form>
    );
  }
}

export default SignupForm;
