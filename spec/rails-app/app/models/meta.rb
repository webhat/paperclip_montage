class Meta < ActiveRecord::Base
	has_attached_file :montage, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates_attachment_content_type :montage, :content_type => /\Aimage\/.*\Z/
end
