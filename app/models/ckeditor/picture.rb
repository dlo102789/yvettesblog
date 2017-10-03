class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data, :styles => { :content => '575>', :thumb => '80x80#' },
                    :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => "/editor/:style/:filename.:extension",
                    :url => ":s3_domain_url"

  validates_attachment_presence :data
  validates_attachment_size :data, less_than: 2.megabytes
  validates_attachment_content_type :data, content_type: /\Aimage/

  def url_content
    url(:content)
  end
end
