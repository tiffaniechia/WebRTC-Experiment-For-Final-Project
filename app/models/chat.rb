class Chat < ActiveRecord::Base
  before_create :generate_uid

  def generate_uid
    self.uid = SecureRandom.urlsafe_base64(30)
  end


end
