function ssl_cert_date --argument-names 'website_url' --description 'Check when SSL certificate will expire.'
  set -l expiration_date (echo | openssl s_client -servername $website_url -connect $website_url:443 2>/dev/null | openssl x509 -noout -dates | grep 'notAfter' | cut -d '=' -f 2)
  echo "$expiration_date => $website_url"
end
