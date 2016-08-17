class Contact < ApplicationRecord

	## VALIDATIONS
	validates :name, :email, :mobile, :message, presence: true

end
