class User < ActiveRecord::Base
has_attached_file :avatar, 
					styles: { medium: "300x300>", thumb: "100x100>" }, 
					default_url: "/images/:style/missing_profile_avatar.png",
					storage: :s3,
					bucket: ENV["AWS_S3_BUCKET"],
					s3_credentials: {access_key_id: ENV["AWS_ACCESS_KEY_ID"], secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]}

validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

has_many :listings, dependent: :destroy

has_secure_password
validates 	:email, uniqueness: true
validates :username, uniqueness: true



	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end

end