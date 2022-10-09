import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import { BrowserRouter} from 'react-router-dom';
import { createGlobalStyle } from 'styled-components';



const GlobalStyle = createGlobalStyle`
  *,
  *::before, 
  *::after {
    box-sizing: border-box;
  }
  html, body {
    margin: 0;
  }
`;

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(

  <BrowserRouter>
  
    <App />
    <GlobalStyle />
  
  </BrowserRouter>
);


