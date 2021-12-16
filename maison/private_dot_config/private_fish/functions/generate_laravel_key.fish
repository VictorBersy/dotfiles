function generate_laravel_key --description 'Generate a valid Laravel APP_KEY value'
  echo base64:(openssl rand -base64 32)
end
