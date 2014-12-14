
Paperclip Montage
=================

Paperclip Montages aim is to make it easier to create Paperclip avatars for meta models. It is a wrapper for ImageMagick's `montage` tool.

This was build for [Oplerno](http://www.oplerno.com/)'s online education platform for combining course avatars so they can be displayed as certificate avatars.

[![Build Status](https://travis-ci.org/webhat/paperclip_montage.svg)](https://travis-ci.org/webhat/paperclip_montage)

Installation
============

```
gem 'paperclip_montage'
```

```
gem install paperclip_montage
```

Example
=======

This is a simple example in which `Meta` creates a combined avatar. 

```ruby
class Avatar < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	has_and_belongs_to_many :metas

	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
```

```ruby
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
```

After any changes to the icon for an `Avatar` the method `reprocess_montage` must be called on the `Meta` object.


Acknowledgements
================
Test image by Matthias Georg - https://www.flickr.com/photos/114805503@N05/15811868778/ 

Help from these sources:
* https://github.com/janfoeh/paperclip-optimizer
* https://github.com/thoughtbot/paperclip
* https://gist.github.com/laurynas/708077
* http://matthewhutchinson.net/2010/10/25/editing-file-uploads-with-a-paperclip-processor
