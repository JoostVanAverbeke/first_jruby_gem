How to copy html reports generated in the docker container to our Jenkins server?

See [](https://code-maze.com/ci-jenkins-docker/)

* Problem 1: The container stores the results of the tests that it executes within itself.

* Problem 2: Even if we publish the report, how are we going to make it available outside the application container and for Jenkins MS test plugin to read from?

Solution 1: let’s update the Dockerfile to publish the results and store them in a folder within the container

Note that the test results folder is still within the container

Solution 2: Here we will be using some docker magic to copy the results out of the container

We can effectively use the docker cp command to copy content out of the container, however, it requires the running container. Not a big deal, we can use some shell script to tackle that.

Here is the updated Jenkinsfile with a dedicated stage to Publish test results:


echo "Container ID is ==> ${containerID}"
        sh "docker cp ${containerID}:/TestResults/test_results.xml test_results.xml"
        sh "docker stop ${containerID}"
        sh "docker rm ${containerID}"
        step([$class: 'MSTestPublisher', failOnError: false, testResultsFile: 'test_results.xml'])  
		
		