resource "aws_dynamodb_table" "book_inventory" {
  name         = "sha-bookinventory"  # Table name
  billing_mode = "PAY_PER_REQUEST"    # On-demand billing mode

  # Define the partition key
  hash_key = "ISBN"                   # Partition key

  # Define the optional sort key
  range_key = "Genre"                 # Sort key

  # Define attributes
  attribute {
    name = "ISBN"
    type = "S"                        # String type for partition key
  }

  attribute {
    name = "Genre"
    type = "S"                        # String type for sort key
  }

  # Add tags for resource organization
  tags = {
    Environment = "Production"
  }
}
