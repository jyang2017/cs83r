class User < ActiveRecord::Base    
	has_one :portfolio
    #has_one :portfolio_history, through: :portfolio
	has_one :portfolio_history
	
	# downcase the name attribute before saving the user
	before_save { self.name = name.downcase }
	
	HUMANIZED_ATTRIBUTES = {
        :name  => '',
		:email => '',
		:password => '',
		:password_confirmation => ''
    }
	
    def self.human_attribute_name(attr, options={})
        HUMANIZED_ATTRIBUTES[attr.to_sym] || super
    end
	
	validates :name,
		presence: { message: "You must provide a username." },
		length:   { maximum: 25, message: "Username is too long." },
        uniqueness: { case_sensitive: false, message: "Username has already been taken." }

	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,
        presence: { message: "You must provide an email address." },
        length: { maximum: 25, message: "The email address is too long." },
        format: { with: VALID_EMAIL_REGEX }
	
	has_secure_password
	
	validates :password,
        presence: { message: "You must provide a password." },
		confirmation: { message: "Password confirmation does not match." },
		length: { minimum: 6, message: "The password is too short." }
	
	# Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
	#has_secure_password
end
