import { Navigate } from 'react-router-dom';

const MotDePasseOublie = () => {
  return <Navigate to="/" state={{ openAuth: 'forgot-password' }} replace />;
};

export default MotDePasseOublie;
