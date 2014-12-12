class CreateMeta < ActiveRecord::Migration
  def change
    create_table :meta do |t|
      t.attachment :montage

      t.timestamps
    end
  end
end
