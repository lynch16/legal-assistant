class Entity
  include Mongoid::Document
  field :name, type: String
  field :address, type: Hash
  field :tax_id, type: Integer

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true

  has_and_belongs_to_many :loans, class_name: 'Loan', inverse_of: :borrowers
  has_and_belongs_to_many :loan_guarantees, class_name: 'Loan', inverse_of: :guarantors
  has_and_belongs_to_many :principals
end
