const API_URL = 'http://localhost:8000/api'; // Update with your API URL

export const fetchBlogs = async () => {
  const response = await fetch(`${API_URL}/blogs`);
  return response.json();
};

export const fetchBlogDetail = async (id) => {
  const response = await fetch(`${API_URL}/blogs/${id}`);
  return response.json();
};

export const fetchPortfolios = async () => {
  const response = await fetch(`${API_URL}/portfolios`);
  return response.json();
};
