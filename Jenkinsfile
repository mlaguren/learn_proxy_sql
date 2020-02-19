pipeline {
    agent any

    stages {
        stage('Test Docker Image(s)') {
            steps {
                sh 'bundle install --path vendor/bundle'
                sh 'bundle exec rspec spec/images -r rspec_junit_formatter --format RspecJunitFormatter -o junit.xml'
            }
            post {
                always {
                    junit 'junit.xml'
                    }
                    }
        }
    }
}