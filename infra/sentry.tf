terraform {
  required_providers {
    sentry = {
      source  = "jianyuan/sentry"
      version = "0.6.0"
    }
  }
}

provider sentry {}

variable sentry_org { type = string }

resource sentry_team web {
  organization = var.sentry_org
  name         = "Web Team"
  slug         = "web"

  # TODO: Team member management
}

resource sentry_project web {
  organization = var.sentry_org
  team         = "web"
  name         = "Web App"
  slug         = "web-app"
  platform     = "javascript"
  resolve_age  = 720
}

output sentry_web_project_id { value = sentry_project.web.id }

data sentry_key web {
  organization = var.sentry_org
  project      = "web-app"
  name         = "Default"
}

output sentry_web_project_key_dsn_public { value = data.sentry_key.web.dsn_public }
