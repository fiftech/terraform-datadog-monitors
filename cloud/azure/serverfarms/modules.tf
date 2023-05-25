module "filter-tags" {
  source = "../../../common/filter-tags"

  environment              = var.environment
  resource                 = "azure_serverfarms"
  filter_tags_use_defaults = var.filter_tags_use_defaults
  filter_tags_custom       = var.filter_tags_custom
}

module "filter-tags-status" {
  source = "../../../common/filter-tags"

  environment              = var.environment
  resource                 = "azure_serverfarms"
  filter_tags_use_defaults = var.filter_tags_use_defaults
  filter_tags_custom       = var.filter_tags_custom
  extra_tags               = ["status:running"]
}
