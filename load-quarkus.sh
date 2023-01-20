export SVC_PRIMEGEN_URL=`oc get rt quarkus-prime -n serverless-demo| awk '(NR>1)'|awk '{print $2}'` 
hey -c 100 -z 30s \
  -H "Host:prime-generator.knativetutorial.example.com" \
  "${SVC_PRIMEGEN_URL}/?sleep=3&upto=10000&memload=100"
