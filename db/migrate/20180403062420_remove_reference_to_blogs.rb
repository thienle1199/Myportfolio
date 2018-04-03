class RemoveReferenceToBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :topic_id
  end
end
