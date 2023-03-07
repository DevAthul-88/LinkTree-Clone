class User < ApplicationRecord
  extend FriendlyId
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  friendly_id :username, use: %i[slugged]

  
  
  def should_generate_new_friendly_id?
   username_changed? || slug.blank?
  end

end
