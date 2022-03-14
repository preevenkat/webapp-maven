
pipeline {
  agent  { label 'ezlink' }
  tools { 
    maven 'maven' 
  }
  environment {   
    SCANTIST_IMPORT_URL= "https://api.scantist.io/ci-scan/"
    SCANTISTTOKEN= "c8396d9a-ae19-4354-8f4a-8468d708bebc"
  }
  stages {  
    stage('Maven Package'){
		  steps {
        echo "Invoking the maven Build"
        sh "mvn -B -DskipTests clean package"
		  }
    }
      stage('Code Scan with scantist'){
        steps{
          sh "curl -s https://scripts.scantist.com/scantist-bom-detect.jar --output scantist-bom-detect.jar"
          sh "java -jar scantist-bom-detect.jar"
          echo "Scantist analysis for maven project....."
        }
      }
  }
}
