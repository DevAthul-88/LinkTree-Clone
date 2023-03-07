class User < ApplicationRecord
  extend FriendlyId
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :links, dependent: :destroy
         after_create :create_default_links
         after_update :create_default_links

  friendly_id :username, use: %i[slugged]

  
  
  def should_generate_new_friendly_id?
   username_changed? || slug.blank?
  end
  
  private

  def create_default_links
   Link.create(user: self, title: "", url: "") while links.count < 5
  end

end
