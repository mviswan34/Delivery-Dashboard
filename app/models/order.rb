class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :chef, optional: true
  enum status: { pending: 0, in_progress: 1, completed: 2, cancelled: 3 }
  delegate :email, to: :cutomer, prefix: true
end
