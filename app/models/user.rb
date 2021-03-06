class User < ApplicationRecord
	validates :firstname, :lastname, :email, :password, :phone , presence: true
	validates :email, uniqueness: true
	validates :email, uniqueness: {case_sensitive: false}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :password, length: {in: 6..20}
	validates :gender, inclusion: %w(male female)
	validates_format_of :phone, length: { in: 11 }, :with => /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
	validates :age, numericality: true
 	validates :age, inclusion: { in: 0..99 }
 	validates :age, numericality: true

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
