function check_status --argument-names 'website_url' 'ping_frequency' --description 'Check website status by return headers, pinged every x seconds'
  set -q ping_frequency[1]
  or set ping_frequency "1"

  while true
    curl -ISs $website_url
    sleep $ping_frequency
  end
end
