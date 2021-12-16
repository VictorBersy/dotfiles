function seal-secret --argument-names 'app_name' --argument-names 'env' --description 'Seal a secret'
  read value_to_encrypt
  echo (echo -n $value_to_encrypt | kubeseal --cert https://sealed-secrets.app.$env.aws.selectra.io/v1/cert.pem --raw --from-file=/dev/stdin --namespace apps --name $app_name;)
end
