module "filter-tags" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = []
}

module "filter-tags-status" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["status:running"]
}

module "filter-tags-blob" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = []
  extra_tags_excluded         = ["apiname:getblobproperties", "apiname:createcontainer"]
}

module "filter-tags-success" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:success"]
}

module "filter-tags-success-blob" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:success"]
  extra_tags_excluded         = ["apiname:getblobproperties", "apiname:createcontainer"]
}

module "filter-tags-timeout-error" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:servertimeouterror"]
}

module "filter-tags-network-error" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:networkerror"]
}

module "filter-tags-throttling-error" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:serverbusyerror"]
}

module "filter-tags-server-other-error" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:serverothererror"]
}

module "filter-tags-client-other-error" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:clientothererror"]
}

module "filter-tags-client-other-error-blob" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:clientothererror"]
  extra_tags_excluded         = ["apiname:getblobproperties", "apiname:createcontainer"]
}

module "filter-tags-authorization-error" {
  source = "../../../common/filter-tags"

  environment                 = var.environment
  resource                    = "azure_storage"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
  extra_tags                  = ["responsetype:authorizationerror"]
}
