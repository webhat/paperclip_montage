class CreateAvatarsMeta < ActiveRecord::Migration
  def change
    create_table :avatars_meta do |t|
      t.belongs_to :meta, index: true
      t.belongs_to :avatar, index: true

      t.timestamps
    end
  end
end
