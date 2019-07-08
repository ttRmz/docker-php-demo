pipeline {
    agent any

    options {
        skipStagesAfterUnstable()
    }

    triggers {
        cron "H/60 * * * *"
    }

    stages {
        stage("Prepare") {
            steps {
                sh "apt-get update"
                sh "apt-get install wget -y"
                sh "wget https://phar.phpunit.de/phpunit-6.5.phar"
                sh "chmod +x phpunit-6.5.phar"
                sh "mv phpunit-6.5.phar /usr/local/bin/phpunit"

                sh "php -v"
                sh "phpunit --version"
            }
        }

        stage("Test") {
            steps {
                sh "phpunit client/functions.test.php"
            }
        }

        stage("Build") {
            steps {
                sh "docker-compose build"
            }
        }

        stage("Deploy") {
            steps {
                sh "docker-compose down"
                sh "docker-compose up -d"
            }
        }
    }
}