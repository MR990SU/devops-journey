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



"How do you structure Terraform projects?"

Strong answer:

I prefer separating Terraform into main.tf, variables.tf, outputs.tf, and terraform.tfvars, and for reusable infrastructure I organize code into modules such as EC2 or networking. I also ensure generated files like state are excluded from version control.

If asked:

"How do you make Terraform code production-friendly?"

Answer:

By using variables instead of hardcoded values, organizing code into modules, using clean naming conventions, validating and formatting code, and keeping state files out of Git.
