class Bank
  include Mongoid::Document
  field :name, type: String
  field :address, type: Hash

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true

  has_and_belongs_to_many :loans
end
