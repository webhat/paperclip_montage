class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.attachment :avatar

      t.timestamps
    end
  end
end
