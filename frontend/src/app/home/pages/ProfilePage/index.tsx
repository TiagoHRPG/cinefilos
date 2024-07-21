import React, { useState, useEffect } from "react";
import styles from "./index.module.css";
import UserReviewList from "../../components/UserReviewList/UserReviewList";
import HeaderUserProfile from "../../components/HeaderUserProfile/HeaderUserProfile";
import api from "/src/services/api";
import { Link, useParams } from "react-router-dom"; 
import WatchListBody from "../../components/WatchListBody";

const UserProfilePage = () => {
  const { username } = useParams();
  const [selectedTab, setSelectedTab] = useState('Reviews'); 

  return (
    <div>
      <HeaderUserProfile onTabChange={setSelectedTab}/>
      <div className={styles.reviewsSection}>
        {selectedTab === 'Reviews' && <UserReviewList username={username}/>}
        {selectedTab === 'Posts' && <div>Posts content here</div>}
        {selectedTab === 'WatchList' && 
          <div>
            <WatchListBody />
          </div>
        }
      </div>
    </div>
  );
};
export default UserProfilePage;
