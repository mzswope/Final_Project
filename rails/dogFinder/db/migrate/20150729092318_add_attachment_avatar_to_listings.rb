class AddAttachmentAvatarToListings < ActiveRecord::Migration

  def change
    add_attachment :shelters, :avatar
  end

end
