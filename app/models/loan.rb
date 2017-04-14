class Loan
  include Mongoid::Document

  # has_many_and_belongs_to_many :banks #Allow customers to add banks to loan in different positions rather than trad 'perm' & 'interim' banks
  # has_many_and_belongs_to_many :borrowers, class_name: 'Entity', inverse_of: :borrowing
  # has_many_and_belongs_to_many :guarantors, class_name: 'Entity', inverse_of: :guaranteeing

  validates :name, presence: true
  validates :number, presence: true, uniqueness: true
  validates :amount, presence: true

  field :name
  field :number
  field :amount
  # fees should be done on percentages rather than amounts.
end
