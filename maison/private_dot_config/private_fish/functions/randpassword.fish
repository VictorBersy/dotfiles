function randpassword --argument-names 'password_length' --description 'Generate an hexadecimal password up-to 512 characters'
  string sub -l $password_length (openssl rand -hex 512);
end
