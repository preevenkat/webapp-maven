
pipeline {
  tools { 
    maven 'maven' 
  }

  stages {  
    stage('Maven Package'){
		  steps {
        echo "Invoking the maven Build"
        sh "mvn -B -DskipTests clean package"
		  }
    }
  }
}
