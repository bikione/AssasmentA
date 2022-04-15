
variable "bucket_name" {
  type = string
  description = "Bucket name"
  default="bucket"
}
variable "member_name" {
    default = "user:john.doe@example.com"
    type = string
}
variable "bucket_location" {
  type = string
  default = "us"
}
variable "project_id" {
  type = string
  default = "bucketproject-347003"
}
variable "storage_class" {
  type = string
  default = "STANDARD"
}