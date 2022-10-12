import React, {useState, useEffect} from 'react'

function Profile() {
      const [profile, seProfile] = useState(null);

      useEffect(() => {
            fetch("/profiles").then((response) => {
              if (response.ok) {
                response.json().then((profile) => setProfile(profile));
              }
            });
          }, []);
        

  return (
    <div>Profile</div>
  )
e

export default Profile