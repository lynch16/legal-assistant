class Entity
  include Mongoid::Document
  field :name, type: String
  field :address, type: Hash
  field :tax_id, type: Integer

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end
