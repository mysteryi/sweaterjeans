class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
     validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)
end