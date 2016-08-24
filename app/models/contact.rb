class Contact < ApplicationRecord

	## VALIDATIONS
	validates :name, :email, :mobile, :message, presence: true
	validates :message, length: {minimum: 50, maximum: 100}
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
