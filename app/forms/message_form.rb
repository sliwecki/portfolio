class MessageForm
  include Virtus.model
  include ActiveModel::Validations

  attribute :name, String
  attribute :phone_number, String
  attribute :email, String
  attribute :message, String

  validates :email, :message, presence: true
end
