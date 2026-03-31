# Jenkins Installation

## What I did

- Installed Java 17
- Added Jenkins repository
- Installed Jenkins
- Started Jenkins service
- Allowed port 8080
- Accessed Jenkins UI
- Unlocked Jenkins using initial admin password

## Important Commands

- sudo systemctl status jenkins
- sudo cat /var/lib/jenkins/secrets/initialAdminPassword
- sudo firewall-cmd --list-ports

## Important Concept

Jenkins stores its main data in:

/var/lib/jenkins
