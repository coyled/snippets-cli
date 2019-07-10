resource "aws_dynamodb_table" "snippets" {
  name           = "${var.table_name}"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1

  hash_key  = "snippet_id"
  range_key = "user"

  attribute {
    name = "snippet_date"
    type = "N"
  }

  attribute {
    name = "snippet_id"
    type = "S"
  }

  attribute {
    name = "user"
    type = "S"
  }

  global_secondary_index {
    name            = "user-snippet_date-index"
    hash_key        = "user"
    range_key       = "snippet_date"
    projection_type = "INCLUDE"
    non_key_attributes = ["snippet_id"]
    read_capacity   = 1
    write_capacity  = 1
  }

  tags = {
    managed_via_terraform = "true"
  }
}
