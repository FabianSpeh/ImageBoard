class AddIspublicToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :ispublic, :boolean
  end
end
