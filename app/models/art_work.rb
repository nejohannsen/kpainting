class ArtWork < ActiveRecord::Base

  has_attached_file :Image,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  def s3_credentials
    {:bucket => ENV["AWS_BUCKET"], :access_key_id => ENV["AWS_ACCESS_KEY_ID"], :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
  end

  validates_attachment_content_type :Image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
