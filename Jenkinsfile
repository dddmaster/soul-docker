node {
    def app
    
    stage('Clone repository') { // for display purposes
        cleanWs()
        //git branch: 'main', changelog: false, poll: false, url: 'https://github.com/dddmaster/...git'
        checkout scm
    }
    stage('Build') {
        app = docker.build "dddmaster/soul-docker"
    }
    
    stage('push') {
        // This step should not normally be used in your script. Consult the inline help for details.
        withDockerRegistry(credentialsId: 'dockerhub') {
            app.push('latest')
        }
    }
}