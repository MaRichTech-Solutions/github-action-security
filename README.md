
# Quest 5 Git action (Security)

1. goal: internal hacker try to change api end point, and SQA team need to prevent this kind of hacking
2. SQA applicant will make testing code
3. Hacker change API env file and make PR, but testing can’t pass.

## Used strategy
1. Write script to check if env has been commited
2. Throw an error when env is commited
3. Add github workflow code to run code on commit and before merging to main.
4. As a security messure the envs can be fetched from git secrets this will make the introduction of env to code during builds way secure.
5. Also it good to merge code to main though PR this will help prevent the PR from being merged if an action fails

## Flows verification
You can check the actions to this repository to verify the instances of failed and successful tests.
