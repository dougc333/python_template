import React from 'react';
import './Header.css';

function Header(){

  return (
    <header className="top">
      <figure className="fig"> 
        <img className = "scale_image" src="../../images/jack.jpg"/> 
        <figcaption>This is an image caption. </figcaption>
      </figure>
    </header>
  );
}

export default Header;

