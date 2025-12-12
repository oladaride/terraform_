**This repository contains my Terraform configuration files for provisioning AWS cloud infrastructure**

--I migrated the project from a local environment into GitHub, cleaned the history to remove oversized provider binaries, and organized the configuration into modular files for reusability.

**Repository Structure

--I split the configuration into multiple files to make it reusable and easier to maintain:

- provider.tf – defined the cloud provider (e.g., AWS) and authentication details.
- variables.tf – declared input variables to parameterize the infrastructure.
- outputs.tf – specified outputs such as instance IPs or resource IDs.
- main.tf – contained the core resource definitions.
- .gitignore – excluded .terraform/, .tfstate, and other generated files from version control.

This modular approach allowed me to reuse the same configuration across different environments by simply changing variable values.

** What I Did:
  
- I cloned a GitHub repository and moved my existing Terraform project files into it.
- I added a .gitignore file to exclude sensitive and large generated files such as .terraform/, .tfstate, and .lock.hcl.
- I initially encountered GitHub’s 100 MB file size limit because Terraform provider binaries had been committed.
- I diagnosed the issue and removed the .terraform directory and lock files from Git tracking.
- I used git filter-repo to rewrite history and permanently strip out oversized files from past commits.
- I force‑pushed the cleaned repository to GitHub, which reduced the repo size from hundreds of MB to just a few KB.
- I verified that only Terraform configuration files and .gitignore remained in the repository.
- I refactored the configuration into modular files (provider.tf, variables.tf,

** Lessons Learned
-Terraform generates large provider binaries and state files that should never be committed.
-.gitignore is essential for keeping repositories clean and secure.
- GitHub enforces strict file size limits, so history rewriting may be necessary if large files slip in.
- Splitting configuration into modular files (provider.tf, variables.tf, outputs.tf) made the project reusable across environments.
- Clean version control practices made the repository lightweight, secure, and portfolio‑ready.
