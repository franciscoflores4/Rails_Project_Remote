class User < ApplicationRecord
	attr_accessor :password
	attr_accessor :name, :email, :password, :password_confirmation

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, :email, :password_confirmation, presence:true
	before_save :encrypt_password

	def has_password(submmitted_password)
		encrypted_password == encrypt_password(submmitted_password)
	end

	def self.authenticate(email, submmitted_password)
		user = find_by_email(email)

		return nil if user.nil?
		return user if user.has_password?(submmitted_password)
	end

	private 
	def encryp_password
		self.salt = Digest::SHA2.hexdigest("#{Time.now.utc}---#{password}") if self.new_record?
		self.encrypted_password = encrypt(password)
	end

	def encrypt(pass)
		Difest::SHA2.hexdigest("#{self.salt}---#{pass}")
	end
end
