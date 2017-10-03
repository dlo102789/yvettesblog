class Ckeditor::AttachmentFile < Ckeditor::Asset
  has_attached_file :data, :styles => { :content => '575>', :thumb => '80x80#' },
                    :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => "/editor/:style/:filename.:extension",
                    :url => ":s3_domain_url"

  validates_attachment_presence :data
  validates_attachment_size :data, less_than: 100.megabytes
  do_not_validate_attachment_file_type :data

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
  
end
