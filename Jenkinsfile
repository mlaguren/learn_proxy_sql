pipeline {
    agent any

    stages {
        stage('Test Docker Image(s)') {
            steps {
                sh 'bundle install --path vendor/bundle'
                sh 'bundle exec rspec spec/images'
            }
        }
    }
}