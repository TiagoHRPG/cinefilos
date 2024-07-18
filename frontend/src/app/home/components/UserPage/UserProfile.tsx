import React, { useEffect, useState } from 'react';
import { getUser, followUser } from '../../../../services/userService';
import styles from '../../pages/UserPage/index.module.css';
import { useParams } from 'react-router-dom';

interface User {
  full_name: string;
  username: string;
  email: string;
  birth_date: string;
  phone_number: string;
  address: string;
  gender: string;
}

const UserProfile = () => {
  const [user, setUser] = useState<User | null>(null);
  const [followUsername, setFollowUsername] = useState('');
  const { userId } = useParams<{ userId: string }>();

  useEffect(() => {
    const fetchUser = async () => {
      if (!userId) {
        console.error('userId is undefined');
        return;
      }
  
      const userData = await getUser(userId);
      setUser(userData.data);
    };
  
    fetchUser();
  }, [userId]);

  const handleFollow = async () => {
    if (!followUsername) {
      console.error('Follow username is empty');
      return;
    }
  
    if (!userId) {
      console.log("aqui mermo")
      console.error('User ID is undefined');
      return;
    }
  
    followUser(userId, followUsername);
  };
  

  if (!user) {
    return <div>Loading...</div>;
  }

  return (
    <div className={styles.profile}>
      <h1>{user.full_name}</h1>
      <p>Username: {user.username}</p>
      <p>Email: {user.email}</p>
      <p>Birth Date: {user.birth_date}</p>
      <p>Phone Number: {user.phone_number}</p>
      <p>Address: {user.address}</p>
      <p>Gender: {user.gender}</p>
      <input
        type="text"
        placeholder="Enter username to follow"
        value={followUsername}
        onChange={(e) => setFollowUsername(e.target.value)}
      />
      <button onClick={handleFollow}>Follow</button>
    </div>
  );
};

export default UserProfile;