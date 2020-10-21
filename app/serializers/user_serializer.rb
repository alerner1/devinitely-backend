class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :activities, :resumes, :cover_letters, :interviews
  has_many :job_leads

end