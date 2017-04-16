class Property
  include Mongoid::Document
  field :address, type: Hash

  ADDRESS_FIELDS = [:street, :city, :state, :zipcode]

  validate :address_has_all_fields

  has_many :loans

  private
  def address_has_all_fields
    if !self.address.is_a?(Hash)
      self.errors.add(:address, 'Address invalid')
    else
      ADDRESS_FIELDS.each do |field|
        if self.address[field].blank?
          self.errors.add(:address, "#{field.capitalize} cannot be blank")
        end
      end
    end
  end
end
