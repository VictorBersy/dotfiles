function meteo --argument-names 'city_or_zipcode' --description 'Display meteo in CLI'
  if test -n "$city_or_zipcode"
    curl http://wttr.in/$city_or_zipcode
  else
    curl http://wttr.in/
  end
end
