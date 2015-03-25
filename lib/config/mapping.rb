collection :posts do
  entity Post

  attribute :id,         Integer
  attribute :title,      String
  attribute :content,    String
  attribute :user_id,    Integer
  attribute :created_at, DateTime
  attribute :updated_at, DateTime
end

collection :users do
  entity User

  attribute :id,         Integer
  attribute :first_name, String
  attribute :last_name,  String
  attribute :email,      String
end
