"What is Terraform state?"

Answer:
Terraform state is the record of infrastructure managed by Terraform. It maps Terraform resources to real cloud resources and helps Terraform determine what to create, update, or destroy.


"Why is Terraform state important?"

Answer:

Without state, Terraform cannot accurately track infrastructure, detect drift, or safely apply changes. It is essential for infrastructure lifecycle management.

"Why should state not be pushed to GitHub?"

Answer:

Because it may expose infrastructure metadata and sensitive operational details, and it can also create collaboration issues if multiple engineers overwrite it.

"What are Terraform modules?"

Strong answer:

Terraform modules are reusable units of infrastructure code that help organize and standardize resource provisioning. They reduce duplication and make infrastructure easier to manage across environments.

If asked:

"Why use modules?"

Answer:

Modules improve reusability, maintainability, and team collaboration by separating infrastructure into logical components like EC2, networking, or storage.
