class Meta < ActiveRecord::Base
	after_update :reprocess_montage

	has_many :avatars

	has_attached_file :montage,
		processors: [:montage],
		:styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates_attachment :montage, :attachment_presence => true,
		:content_type => { :content_type => "image/jpeg" }

	def reprocess_montage
		montage.reprocess!
	end
end
