class Micropost < ActiveRecord::Base

  attr_accessible :trial, :content, :attachedfile  

  belongs_to :user  


  has_attached_file :attachedfile   # that's my really usefull field name


  validates :trial, length: {maximum: 20 }

  validates :content, presence: true, length: { maximum: 140 }

  validates :user_id, presence: true

  validates_attachment_content_type :attachedfile, :content_type => ["image/jpeg", "image/jpg", "image/png", "image/gif", "image/pdf"]

  default_scope order: 'microposts.created_at DESC'  #  descending order , newest first"

end
