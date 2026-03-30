"What is Terraform state?"

Answer:
Terraform state is the record of infrastructure managed by Terraform. It maps Terraform resources to real cloud resources and helps Terraform determine what to create, update, or destroy.


"Why is Terraform state important?"

Answer:

Without state, Terraform cannot accurately track infrastructure, detect drift, or safely apply changes. It is essential for infrastructure lifecycle management.

"Why should state not be pushed to GitHub?"

Answer:

Because it may expose infrastructure metadata and sensitive operational details, and it can also create collaboration issues if multiple engineers overwrite it.
