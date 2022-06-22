variable "df-name" {
    type = string
    description = "Name of Dataflow job"
}

variable "project_id" {
    type = string
    description = "project_id"
}

variable "access_token" {
  description = "access_token"
  type        = string
  sensitive   = true
}
