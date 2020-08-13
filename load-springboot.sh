export SVC_PRIMEGEN_URL=`oc get rt springboot-prime -n knative-demo -o yaml | yq read - 'status.url'` 
hey -c 100 -z 30s \
  -H "Host:prime-generator.knativetutorial.example.com" \
  "${SVC_PRIMEGEN_URL}/?sleep=3&upto=10000&memload=100"
