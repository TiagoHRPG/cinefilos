import { createBrowserRouter, RouterProvider } from "react-router-dom";
import CreateTest from "./app/home/pages/CreateTest";
import ContentDetailsPage from "./app/home/pages/ContentDetailsPage";
import ListTests from "./app/home/pages/ListTests";
import ContentsPage from "./app/home/pages/ContentsPage";
import Layout from "./app/home/components/Layout/Layout"; 
import CreateReviewPage from "./app/home/pages/CreateReviewPage";
import CreateContentPage from "./app/home/pages/CreateContentPage";
import RegistrationPage from "./app/home/pages/RegistrationPage";
import UserPage from "./app/home/pages/UserPage";
import ResetPasswordPage from "./app/home/pages/ResetPasswordPage";
import EditUserInfoPage from "./app/home/pages/EditUserPage";
import DeleteAccountPage from "./app/home/pages/DeleteAccountPage"
import UpdateContentPage from "./app/home/pages/UpdateContentPage";
import UserProfilePage from "./app/home/pages/ProfilePage";
import UpdateReviewPage from "./app/home/pages/UpdateReviewPage";


const router = createBrowserRouter([
  {
    path: "*",
    element: <Layout><CreateTest /></Layout>,
  },
  {
    path: "/create-test",
    element: <Layout><CreateTest /></Layout>,
  },
  {
    path: "/contents/movies",
    element: <Layout><ContentsPage content_type = {"movies"} /></Layout>,
  },
  {
    path: "/contents/tv_shows",
    element: <Layout><ContentsPage content_type = {"tv_shows"} /></Layout>,
  },
  {
    path: "/contents/:content_type/:title",  
    element: <Layout><ContentDetailsPage /></Layout>,
  },
  {
    path: "/tests",
    element: <Layout><ListTests /></Layout>,
  },
  {
    path: "/contents/:content_type/:title/create_review",
    element: <Layout><CreateReviewPage /></Layout>,
  },
  {
    path: "/contents/:content_type/create_content",
    element: <Layout><CreateContentPage /></Layout>,
  },
  {
    path: "/register",
    element: <RegistrationPage />,
  },
  {
    path: "/user/get_user/:userId",
    element: <Layout><UserPage /></Layout>,
  },
  {
    path: "/user/reset_password/:userId",
    element: <Layout><ResetPasswordPage /></Layout>,
  },
  {
    path: "/user/edit_user_info/:userId",
    element: <Layout><EditUserInfoPage /></Layout>,
  },
  {
    path: "/user/delete_account/:userId",
    element: <Layout><DeleteAccountPage /></Layout>,
  },
  {    
    path: "/contents/:content_type/:title/update_content",
    element: <Layout><UpdateContentPage /></Layout>,
  },
  {
    path: "/profile/:username",
    element: <Layout><UserProfilePage /></Layout>,
  },
  {
    path: "/profile/:username/:content_type/:content_title/update_review",
    element: <Layout><UpdateReviewPage /></Layout>,
  }
]);

export default function App() {
  return <RouterProvider router={router} fallbackElement={<p>Loading...</p>} />;
}