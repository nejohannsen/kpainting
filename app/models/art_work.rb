class ArtWork < ActiveRecord::Base

  has_attached_file :Image,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  def s3_credentials
    {:bucket => "kpainting", :access_key_id => "AKIAIPD2ZINSQTVI5A4A", :secret_access_key => "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"}
  end

  validates_attachment_content_type :Image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
