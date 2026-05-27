#!/bin/bash

# create keys
openssl req -x509 -newkey rsa:2048 -nodes -keyout tls.key -out tls.crt -days 365 -subj "/CN=www.example.com"

# base64-encode the TLS key and certificate into single-line strings
base64 -w0 < tls.crt

base64 -w0 < tls.key
