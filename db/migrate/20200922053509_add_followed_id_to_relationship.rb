class AddFollowedIdToRelationship < ActiveRecord::Migration[5.2]
  def change
    add_column :relationships, :followed_id, :string
  end
end
