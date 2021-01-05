# AWS Starter Template
Use this as a starter for AWS + Typescript projects.

## How to use
1. Run `yarn install`
2. Modify `deploy/deploy.sh` to chose a stackname
3. Ensure your AWS credentials are valid (`aws s3 ls` is a good command to make sure of this)
4. Run `npm run deploy` to deploy your stack. This will compile the typescript and deploy your AWS resources all in one step.

## Possible improvements
1. Prettify support
2. Better CF template splitting
3. Easier configuration