How did you set up Jenkins?"

Strong answer:

I installed Jenkins on a dedicated Linux VM with Java 17, enabled the Jenkins service, opened port 8080, unlocked it using the initial admin password, and completed the initial plugin and admin setup.

If asked:

"Why not install Jenkins on Docker first?"

Answer:

For initial learning, installing Jenkins directly on a Linux VM helps understand the service lifecycle, dependencies, filesystem layout, and troubleshooting better before containerizing it later.

"How does Jenkins integrate with GitHub?"

Strong answer:

Jenkins integrates with GitHub by pulling source code from a repository into its workspace and then executing build, test, or deployment steps defined in the job or pipeline configuration.

If asked:

"Does Jenkins run directly from your local machine repo?"

Answer:

No. Jenkins clones the repository into its own workspace and executes the job there, which ensures isolated and repeatable CI execution.

If asked:

"How do you debug a Jenkins GitHub job failure?"

Answer:

I first check the console output, verify whether the repository was cloned correctly, inspect the Jenkins workspace, and then identify whether the failure is due to script issues, permissions, or environment problems.
"What is a Jenkins job?"

Strong answer:

A Jenkins job is an automation unit that executes defined tasks such as shell commands, builds, tests, or deployments. It is the basic execution unit of Jenkins CI pipelines.

If asked:

"What is Jenkins workspace?"

Answer:

Jenkins workspace is the directory where a job runs. It stores checked-out code, temporary build files, and generated artifacts during job execution.

If asked:

"How do you debug a failed Jenkins build?"

Answer:

I first check the console output to identify the failing command, verify the workspace contents, and then fix the build step or environment issue causing the failure.
