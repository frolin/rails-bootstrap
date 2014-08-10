class Document < ActiveRecord::Base

  extend Enumerize
  enumerize :format_type, in: [:url, :image, :mp3, :txt, :doc, :other], default: :other
  enumerize :access_type, in: [:public, :private], default: :private



   belongs_to :user


end
