## Learn Terraform - Manage GitHub Users, Teams, and Repository Permissions

This repo is a companion repo to the [Manage GitHub Users, Teams, and Repository Permissions](https://developer.hashicorp.com/terraform/tutorials/it-saas/github-user-teams) tutorial, containing configuration files to manage GitHub users, teams and repository permissions.

## 使用方法
- 前提条件
	- [Terraform 1.0.5+ CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)以降
	- Githubアカウント
	- Github OU
- クレデンシャル設定
	- export GITHUB_TOKEN=`<token>`
	- export GITHUB_OWNER=`<OU>`
		- **OU を指定しないと、ユーザごとの制御となる**
- サンプルリポジトリとTFファイル構成
	- サンプルリポジトリ
		- git clone https://github.com/kandaquantum-teraform/in-tf-github.git
		- cd learn-terraform-github-user-teams
	- ファイル構成
	  - ローカル変数
	    - locals.tf
	      - メンバー一覧、チーム一覧を引く数 local に代入する。
		- member 関連
			- member.csv
				- member 一覧。ユーザ名と対応ロール（Role）を記述
			- member.tf
				- member.csv の記述をデプロイする
		- team 関連
			- teams.csv
				- team 一覧。チーム名やprivacyなどを記述
			- team-membersフォルダ
				- チーム毎のメンバー構成の記述
			- teams.tf
				- チーム一覧とチームメンバーの記述をデプロイする。
		- repository 関連
			- repositories.tf
			  - 作成するリポジトリ一覧
      - repos-team
        - リポジトリとチームの関係設定
  - 適用手順
	- export GITHUB_TOKEN=`<token>`
	- export GITHUB_OWNER=`<OU>` 
	- terraform init
	- echo 'local.team_members_files' | terraform console
	- terraform apply -target github_team.all
	- terraform apply
