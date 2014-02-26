class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image,
		:styles => {
		  :tiny => "25x25#",
		  :thumbnail => "100x100#",
		  :small  => "150x150>",
		  :medium => "300x300>" },
		  :default_url => "/images/default_:style.png"
	validates_attachment_content_type :image, :content_type => /\Aimage/
end