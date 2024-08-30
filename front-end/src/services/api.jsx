const API_URL = 'http://localhost:8000/api'; 

export const fetchBlogs = async () => {
  const token = localStorage.getItem('token');
  const response = await fetch('http://localhost:8000/api/blogs', {
    headers: {
      'Authorization': `Bearer ${token}`,
      'Accept': 'application/json',
    },
  });

  if (!response.ok) {
    throw new Error('Network response was not ok');
  }
  const data = await response.json();
  return data;
};


export const fetchBlogDetail = async (id) => {
  const response = await fetch(`http://localhost:8000/api/blogs/${id}`, {
    headers: {
      'Authorization': `Bearer ${localStorage.getItem('token')}`
    }
  });
  return response.json();
};

// export const fetchComments = async (id) => {
//   const response = await fetch(`http://localhost:8000/api/comments/${id}`, {
//     headers: {
//       'Authorization': `Bearer ${localStorage.getItem('token')}`
//     }
//   });
//   return response.json();
// };



export const fetchPortfolios = async (id) => {
  const response = await fetch(`http://localhost:8000/api/portfolios`, {
    headers: {
      'Authorization': `Bearer ${localStorage.getItem('token')}`
    }
  });
  return response.json();
};


