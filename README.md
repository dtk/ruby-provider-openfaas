# ruby-provider-openfaas

Quick start:
```
# pull the templates
faas template pull

# deploy the function
faas deploy -f stack.yml

# verify the function is deployed correctly
echo '{"request_type":"status"}' | faas invoke ruby-provider
```

