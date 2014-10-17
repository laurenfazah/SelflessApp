class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.string :deed
      t.belongs_to :user
    end
  end
end
