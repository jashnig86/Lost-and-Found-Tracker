CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255),
  google_id VARCHAR(255),
  auth_provider ENUM('local', 'google') DEFAULT 'local',
  profile_image VARCHAR(255),
  security_question VARCHAR(255),
  security_answer VARCHAR(255),
  email_verified BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);