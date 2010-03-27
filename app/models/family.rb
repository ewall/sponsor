class Family < ActiveRecord::Base
	# support for image attachment via Paperclip
	has_attached_file :photo,
		:styles => { :thumb => "100x100#" },
		:url => "/:class/:id/:attachment/:style_:basename.:extension"

	# validations
	validates_attachment_presence :photo
end
