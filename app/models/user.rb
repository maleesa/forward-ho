class User < ActiveRecord::Base
	has_many :items
	has_many :tasks

	email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

    validates :first_name,		:presence 	=> true,
  			  :length		            => { :maximum => 50 }
    validates :last_name,		:presence 	=> true,
  			  :length		            => { :maximum => 50 }
    validates :email,		    :presence	=> true,
  			  :format		            => { :with => email_regex },
           	  :uniqueness 	            => { :case_sensitive => false }
    validates :password, 		:length			        => { :within => 6..40 }


    has_secure_password
    # attr_accessor :password
    # attr_accessible :password, :password_confirmation
end
