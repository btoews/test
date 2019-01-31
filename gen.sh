#!/bin/bash

rm *.pem *.pub *_ca

ssh-keygen -trsa -N "" -f ./rsa_ca
ssh-keygen -tdsa -N "" -f ./dsa_ca
ssh-keygen -tecdsa -N "" -f ./ecdsa_ca
ssh-keygen -ted25519 -N "" -f ./ed25519_ca

ssh-keygen -trsa -N "" -f ./rsa_leaf_for_rsa_ca

ssh-keygen -trsa -N "" -f ./rsa_leaf_for_dsa_ca

ssh-keygen -trsa -N "" -f ./rsa_leaf_for_ecdsa_ca

ssh-keygen -trsa -N "" -f ./rsa_leaf_for_ed25519_ca

ssh-keygen -tdsa -N "" -f ./dsa_leaf_for_rsa_ca

ssh-keygen -tecdsa -N "" -f ./ecdsa_leaf_for_rsa_ca

ssh-keygen -ted25519 -N "" -f ./ed25519_leaf_for_rsa_ca

# pem encoded keys
openssl genrsa -out rsa.pem 2048
openssl dsaparam -noout -out dsa.pem -genkey 1024
openssl ecparam -noout -out ecdsa.pem -name prime256v1 -genkey
