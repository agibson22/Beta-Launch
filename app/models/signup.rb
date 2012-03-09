class Signup < ActiveRecord::Base
  
  attr_accessible :email, :invitation_token, :sender_id
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates_presence_of :email, :on => :create
  validates_format_of :email, :with => email_regex
  
  before_save :generate_invitation_token
  
  private
  
  def generate_invitation_token
    self.invitation_token = rand(36**8).to_s(36)
  end
  
end
