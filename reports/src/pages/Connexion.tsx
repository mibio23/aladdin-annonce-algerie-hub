import { Navigate } from 'react-router-dom';

const Connexion = () => {
  return <Navigate to="/" state={{ openAuth: 'login' }} replace />;
};

export default Connexion;
