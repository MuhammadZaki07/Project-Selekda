import { FaEye, FaEyeSlash } from "react-icons/fa";
import { useState } from "react";
import "../styles/Login.css";

export const Login = () => {
  const [passwordShow, setPasswordShow] = useState(false);
  const handleShowPw = () => {
    setPasswordShow(!passwordShow);
  };
  const handleSubmit = (e) => {
    fetch("", {
      method: "POST",
      body: JSON.stringify(),
    });
  };
  return (
    <div className="container">
      <div className="card">
        <div className="title">Login</div>
        <form onSubmit={(e) => handleSubmit(e)}>
          <div className="form-control">
            <div className="label">Username</div>
            <input type="text" className="form-input" placeholder="@ex: irwansyah" />
          </div>
          <div className="form-control">
            <div className="label">Password</div>
            <input type={passwordShow ? "text" : "password"} className="form-input" placeholder="@ex: *******" />
            <div className="showpassword" onClick={handleShowPw}>
              {passwordShow ? <FaEyeSlash /> : <FaEye />} Show Password
            </div>
          </div>
          <button type="submit" className="btn">
            Login
          </button>
        </form>
      </div>
    </div>
  );
};
