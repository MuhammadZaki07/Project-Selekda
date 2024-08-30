import { FaEye, FaEyeSlash } from "react-icons/fa";
import { useState } from "react";
import "../styles/Login.css";

const Register = () => {
  const [passwordShow, setPasswordShow] = useState(false);
  const [formData, setFormData] = useState({
    first_name: "",
    last_name: "",
    email: "",
    birth_day: "",
    phone_number: "",
    profile_picture: null,
    password: "",
  });

  const handleShowPw = () => {
    setPasswordShow(!passwordShow);
  };

  const handleChange = (e) => {
    const { name, value, files } = e.target;
    if (files) {
      setFormData({
        ...formData,
        [name]: files[0],
      });
    } else {
      setFormData({
        ...formData,
        [name]: value,
      });
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const formDataObj = new FormData();
    for (let key in formData) {
      formDataObj.append(key, formData[key]);
    }

    try {
      const response = await fetch('http://localhost:8000/api/register', {
        method: "POST",
        body: formDataObj,
      });

      const data = await response.json();
      if (response.ok) {
        console.log("Registration successful:", data);
        // window.location.href = "/landingpage";
      } else {
        console.error("Registration failed:", data);
      }
    } catch (error) {
      console.error("Error:", error);
    }
  };

  return (
    <div className="container">
      <div className="card">
        <div className="title">Register</div>
        <form onSubmit={handleSubmit}>
          <div className="area">
            <div className="form-control">
              <div className="label">Name</div>
              <input
                type="text"
                name="first_name"
                className="form-input"
                placeholder="Your name"
                onChange={handleChange}
              />
            </div>
            <div className="form-control">
              <div className="label">Last Name</div>
              <input
                type="text"
                name="last_name"
                className="form-input"
                placeholder="Last Name"
                onChange={handleChange}
              />
            </div>
          </div>
          <div className="area">
            <div className="form-control">
              <div className="label">Email</div>
              <input
                type="email"
                name="email"
                className="form-input"
                placeholder="Email"
                onChange={handleChange}
              />
            </div>
            <div className="form-control">
              <div className="label">Birth-day</div>
              <input
                type="date"
                name="birth_day"
                className="form-input"
                placeholder="Birth-day"
                onChange={handleChange}
              />
            </div>
          </div>
          <div className="area">
            <div className="form-control">
              <div className="label">No telephone</div>
              <input
                type="number"
                name="phone_number"
                className="form-input"
                placeholder="08******"
                onChange={handleChange}
              />
            </div>
            <div className="form-control">
              <div className="label">Photo Profil</div>
              <input
                type="file"
                name="profile_picture"
                className="form-input"
                onChange={handleChange}
              />
            </div>
          </div>
          <div className="area">
            <div className="form-control">
              <div className="label">Username</div>
              <input
                type="text"
                name="username"
                className="form-input"
                placeholder=""
                onChange={handleChange}
              />
            </div>
            <div className="form-control">
              <div className="label">Password</div>
              <input
                type={passwordShow ? "text" : "password"}
                name="password"
                className="form-input"
                placeholder="*******"
                onChange={handleChange}
              />
              <div className="showpassword" onClick={handleShowPw}>
                {passwordShow ? <FaEyeSlash /> : <FaEye />} Show Password
              </div>
            </div>
          </div>
          <button type="submit" className="btn">
            Register
          </button>
        </form>
      </div>
    </div>
  );
};

export default Register;
