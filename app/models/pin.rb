class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
     attr_accessor :photo_file_name
     attr_accessor :photo_content_type
     attr_accessor :photo_file_size
     attr_accessor :photo_updated_at
end