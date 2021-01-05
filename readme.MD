# AWS Starter Template
Use this as a starter for AWS + Typescript projects.

## How to use
1. Run `yarn install`
2. Change `project.name` to what you want the stack name to be and `bucket.name` to the name of an S3 bucket that already exists
4. Ensure your AWS credentials are valid (`aws s3 ls` is a good command to make sure of this)
5. Run `npm run deploy` to deploy your stack. This will compile the typescript and deploy your AWS resources all in one step.

## Possible improvements
1. Prettify support
2. Better CF template splitting
3. Easier configuration