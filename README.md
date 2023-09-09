# odin-recipes

Odin Project recipes project (plus IaC)

The website is here: <https://odinrecipes01929317.z14.web.core.windows.net/>

See: <https://www.theodinproject.com/lessons/foundations-recipes>

## Information

I made a slight modification to the project to also include:

- IaC using Terraform
  - Serverless hosting via Azure Blob Container with static website hosting
- CD pipeline using Github Actions

  1. Run on commit of *code/* to main.
  2. Use Az CLI to replace existing blobs with the updated contents.
      - I don't use blob versioning or change feed because I want the repository to be the source of truth for blob versions.
