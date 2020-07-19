# Networking & Inspection Hands-on

- **Step 1**: Use `gauravagarwalr/spring-greeting` image for this hands-on
- **Step 2**: Figure out the port in which the service is running
- **Step 3**: Create a container using the above image and start it
- **Step 4**: Start another container using `alpine` or `ubuntu` & make a curl request to the service running inside
- **Step 5**: Now isolate these two containers in their own network
- **Step 6**: Start another container using `alpine` or `ubuntu` & make a curl request to the service running inside, this particular container should not be able to see the service running within `spring-greeting`
