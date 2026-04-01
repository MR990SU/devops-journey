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

"What are Jenkins environment variables?"

Strong answer:

Jenkins environment variables are built-in dynamic values available during builds, such as job name, build number, workspace path, and node name, which help make CI jobs more flexible and reusable.

If asked:

"What is a Jenkins artifact?"

Answer:

A Jenkins artifact is an important output produced by a build, such as a report, binary, or package, which is archived and preserved after the build completes.

If asked:

"What is the difference between workspace and artifact?"

Answer:

Workspace is the directory where Jenkins executes the build, while an artifact is a selected output intentionally saved after the build for later access or use.

"What is a Jenkins pipeline?"

Strong answer:

A Jenkins pipeline is a code-defined automation workflow made up of stages and steps, used to structure CI/CD processes such as build, test, and deployment.

If asked:

"Why are pipelines better than freestyle jobs?"

Answer:

Pipelines are more scalable, reusable, and maintainable because they are defined as code, can be version-controlled, and provide better structure than freestyle jobs.

If asked:

"What happens if a stage fails?"

Answer:

If a stage fails, Jenkins stops the pipeline by default and marks the build as failed, which helps quickly identify broken steps in CI workflows.
“I moved Jenkins pipelines from UI-based configuration to Jenkinsfile-based pipeline-as-code stored in GitHub. This improves version control, reproducibility, team collaboration, and makes CI pipelines production-style.”
