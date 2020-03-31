# Networking & Inspection Hands-on

* Use `gauravagarwalr/spring-greeting` image for this hands-on
* Figure out the port in which the service is running
* Create a container using the above image and start it
* Start another container using `alpine` or `ubuntu` & make a curl request to the service running inside
* Now isolate these two services in their own network
* Start another container using `alpine` or `ubuntu` & make a curl request to the service running inside, this particular container should not be able to see the service running within `spring-greeting`
