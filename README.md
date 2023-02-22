## MLOps Repositiry

This repository is a template to create a workspace in docker - a self-contained and fully isolated development environment,
that runs inside a docker container. This workspace will have an in-browser UI interface.
- **The only requirement is to install [Docker](https://www.google.com/search?client=safari&rls=en&q=docker&ie=UTF-8&oe=UTF-8).**

## Benefits of a workspace in docker

Workspaces act as a pseudo VM to streamline all the boilerplate dev environment setup. **Install Docker, run a single command, and done.** You've spun someone up on your project. No SSL issues, no software or languages to install, no environments or packages to install, no project repos to clone, just immediately start adding value.

**TLDR:** Eliminate the level of effort needed to spin someone up to a project's required digital infrastructure. 

<details>
  <summary>This workspace might be useful when you want to:</summary>
  
  - Avoid the tedious process of setting dev environment on your laptop
  - Work conveniently with multiple projects on the same machine
  - Be able to move all your work to another machine
  - **Simple way to start coding**
  - Run dev environment in cloud and work from any device, being independent of cloud provider
  - Back-up entire workspaces with important work, save versions of the workspaces before changes
  - Collaborate with colleagues by sharing the entire workspace or run it in the cloud
  - Move from dev to POC in minutes
  - Make experiments (try new packages, versions, frameworks) without risking affecting existing environment
  - With a single command start, stop and resume job schedules, related to the same project
  - **Create a custom dev environment for your team, and help new-comers to save time on setting up their environments**
  - **Move dev environment back and forth between powerful Windows PC and macOS laptop**

</details>

## Get Started

Assuming docker is installed with a CLI terminal interface.
```
docker build -t ubuntu_python --rm https://github.com/khandgp1/mlops.git
```
```
docker run -ti --rm ubuntu_python
```


