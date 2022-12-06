# Create ext-og repository
resource "github_repository" "ext-og" {
  name = "ext-og"
}

# Add memberships for ext-og repository
resource "github_team_repository" "ext-og" {
  for_each = {
    for team in local.repo_teams_files["ext-og"] :
    team.team_name => {
      team_id    = github_team.all[team.team_name].id
      permission = team.permission
    } if lookup(github_team.all, team.team_name, false) != false
  }

  team_id    = each.value.team_id
  repository = github_repository.ext-og.id
  permission = each.value.permission
}

# Create "ext-kkhs" repository
resource "github_repository" "ext-kkhs" {
  name = "ext-kkhs"
}

# Add memberships for ext-kkhs repository
resource "github_team_repository" "ext-kkhs" {
  for_each = {
    for team in local.repo_teams_files["ext-kkhs"] :
    team.team_name => {
      team_id    = github_team.all[team.team_name].id
      permission = team.permission
    } if lookup(github_team.all, team.team_name, false) != false
  }

  team_id    = each.value.team_id
  repository = github_repository.ext-kkhs.id
  permission = each.value.permission
}

# Create "ext-id" repository
resource "github_repository" "ext-id" {
  name = "ext-id"
}

# Add memberships for ext-id repository
resource "github_team_repository" "ext-id" {
  for_each = {
    for team in local.repo_teams_files["ext-id"] :
    team.team_name => {
      team_id    = github_team.all[team.team_name].id
      permission = team.permission
    } if lookup(github_team.all, team.team_name, false) != false
  }

  team_id    = each.value.team_id
  repository = github_repository.ext-id.id
  permission = each.value.permission
}

# Create "ext-561" repository
resource "github_repository" "ext-561" {
  name = "ext-561"
}

# Add memberships for ext-561 repository
resource "github_team_repository" "ext-561" {
  for_each = {
    for team in local.repo_teams_files["ext-561"] :
    team.team_name => {
      team_id    = github_team.all[team.team_name].id
      permission = team.permission
    } if lookup(github_team.all, team.team_name, false) != false
  }

  team_id    = each.value.team_id
  repository = github_repository.ext-561.id
  permission = each.value.permission
}

# Create in-research repository
resource "github_repository" "in-research" {
  name = "in-research"
}

# Add memberships for reseach repository
resource "github_team_repository" "in-research" {
  for_each = {
    for team in local.repo_teams_files["in-research"] :
    team.team_name => {
      team_id    = github_team.all[team.team_name].id
      permission = team.permission
    } if lookup(github_team.all, team.team_name, false) != false
  }

  team_id    = each.value.team_id
  repository = github_repository.in-research.id
  permission = each.value.permission
}

# Create "in-tf-github" repository
resource "github_repository" "in-tf-github" {
  name = "in-tf-github"
}

# Add memberships for in-tf-github repository
resource "github_team_repository" "in-tf-github" {
  for_each = {
    for team in local.repo_teams_files["in-tf-github"] :
    team.team_name => {
      team_id    = github_team.all[team.team_name].id
      permission = team.permission
    } if lookup(github_team.all, team.team_name, false) != false
  }

  team_id    = each.value.team_id
  repository = github_repository.in-tf-github.id
  permission = each.value.permission
}

# Create "in-tf-awssso" repository
resource "github_repository" "in-tf-awssso" {
  name = "in-tf-awssso"
}

# Add memberships for in-tf-awssso repository
resource "github_team_repository" "in-tf-awssso" {
  for_each = {
    for team in local.repo_teams_files["in-tf-awssso"] :
    team.team_name => {
      team_id    = github_team.all[team.team_name].id
      permission = team.permission
    } if lookup(github_team.all, team.team_name, false) != false
  }

  team_id    = each.value.team_id
  repository = github_repository.in-tf-awssso.id
  permission = each.value.permission
}
