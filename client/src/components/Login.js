import { useState } from "react";
import styled from "styled-components";
import LoginForm from "./LoginForm";
import SignUpForm from "./SignUpForm";
import Button from "./styles/Button";


function Login({ onLogin }) {
  const [showLogin, setShowLogin] = useState(true);
  
  return (
    <div className="login-form">
    <Wrapper>
      <Logo>Desk-Fit</Logo>
      <h2 className="tagline"> <strong> Welcome!! </strong> <br/> Our handpicked collection of stretching  exercises and poses will help ease the strain on your body and help you focus more.</h2>
      {showLogin ? (
        <>
          <LoginForm onLogin={onLogin} />
          <Divider />
          <p className="accountquestion">
            Don't have an account?</p> &nbsp;
            <Button onClick={() => setShowLogin(false)}>
              Sign Up
            </Button> 
        </>
      ) : (
        <>
          <SignUpForm onLogin={onLogin} />
          <Divider />
          <p className="accountquestion">
            Already have an account?</p> &nbsp;
            <Button onClick={() => setShowLogin(true)}>
              Log In
            </Button>
        </>
      )}
    </Wrapper>
    </div>
  );
}


const Logo = styled.h1`
  font-family: "Cookie", cursive;
  color: black;
  text-shadow: 1px 1px 10px white;
  font-size: 100px;
  margin: 8px 0 16px;
  text-align: center;

`;

const Wrapper = styled.section`
  max-width: 500px;
  margin: 40px auto;
  padding: 16px;
`;

const Divider = styled.hr`
  border: none;
  border-bottom: 1px solid #ccc;
  margin: 16px 0;
`;

export default Login;