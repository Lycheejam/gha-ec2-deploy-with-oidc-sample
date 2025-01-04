# gha-ec2-deploy-with-oidc-sample

Github Actionsを使ってEC2インスタンスへのWebアプリケーションデプロイを行います。  
デプロイにはCodeDeployを使用し、Github ActionsとAWS CodeDeploy間の認証にはOIDCを用います。  
今回の主目的はOIDCを使ったGithub ActionsとAWS間の連携です。

## NOTE

参考にした公式のサンプルコード。

https://github.com/aws-samples/aws-codedeploy-github-actions-deployment

EC2インスタンスへのCodeDeploy Agentのインストールが必要。

* https://docs.aws.amazon.com/ja_jp/codedeploy/latest/userguide/codedeploy-agent-operations-install-ssm.html
* https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/distributor-working-with-packages-deploy.html#distributor-deploy-pkg-console

`.env`の`APP_URL=http://`をEC2インスタンスのIPアドレスに変更する。  
最低限動けば良いと言うアレで進めたのでEC2インスタンスのセットアップはかなり雑。

rainのデプロイコマンド

```sh
rain deploy cloudformation/template.yml ExampleApp -c cloudformation/parameter.json -y
```

rainのフォーマット

```sh
rain fmt cloudformation/template.yml -w
```
