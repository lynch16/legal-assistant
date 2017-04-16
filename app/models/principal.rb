class Principal
  include Mongoid::Document
  field :name, type: String
  field :address, type: Hash
  field :tax_id, type: Integer

  validates :name, presence: true, uniqueness: true

  has_and_belongs_to_many :entities
end
