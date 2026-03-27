import { Navigate } from 'react-router-dom';

const Inscription = () => {
  return <Navigate to="/" state={{ openAuth: 'register' }} replace />;
};

export default Inscription;
