How did you set up Jenkins?"

Strong answer:

I installed Jenkins on a dedicated Linux VM with Java 17, enabled the Jenkins service, opened port 8080, unlocked it using the initial admin password, and completed the initial plugin and admin setup.

If asked:

"Why not install Jenkins on Docker first?"

Answer:

For initial learning, installing Jenkins directly on a Linux VM helps understand the service lifecycle, dependencies, filesystem layout, and troubleshooting better before containerizing it later.

# Jenkins First Job

## What I did

- Created a Jenkins freestyle job
- Ran shell commands inside Jenkins
- Viewed console output
- Identified Jenkins workspace
- Tested both successful and failed builds

## Important Concepts

- Jenkins job
- Build step
- Console output
- Workspace

## Workspace Path

/var/lib/jenkins/workspace/first-build-job
