class Meta < ActiveRecord::Base
	#after_update :reprocess_montage

	has_and_belongs_to_many :avatars

	has_attached_file :montage,
		processors: [:montage],
		:styles => { medium: { geometry: "300x300>", source: :avatars} , thumb: { geometry: "100x100>" } }

	validates_attachment :montage, :attachment_presence => true,
		:content_type => { :content_type => "image/jpeg" }

	def reprocess_montage
		montage.reprocess!
	end
end
