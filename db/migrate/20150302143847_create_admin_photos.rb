class CreateAdminPhotos < ActiveRecord::Migration
  def change
    create_table :admin_photos do |t|
      t.string :name
      t.string :image_uid

      t.timestamps
    end
  end
end
