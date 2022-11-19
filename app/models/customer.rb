class Customer < ApplicationRecord
  validates :name, presence: true

  before_create do |customer|
    customer.api_key = customer.generate_api_key
  end

  RESERVED_CUSTOMERS = {
    site: 'Fiscaliza Site'
  }.freeze

  def generate_api_key
    loop do
      token = SecureRandom.base64(160).tr('+/=', 'Qrt')
      break token unless Customer.exists?(api_key: token)
    end
  end
end
