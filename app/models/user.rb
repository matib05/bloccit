class User < ActiveRecord::Base
    before_save { self.email = email.downcase if email.present? }
    
    validates(:name, length: { minimum: 1, maximum: 100}, presence: true)
    
    validates(:password, presence: true, length: { minimum: 6}, if: "password_digest.nil?")
    validates(:password, length: { minimum: 6}, allow_blank: true)
    
    validates(:email,  presence: true, length: { minimum: 3, maximum: 254 }, uniqueness: {case_sensitive: false})
    
    has_secure_password
    
end