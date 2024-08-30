class CreateUserBooksAndGenres < ActiveRecord::Migration[7.1]
  def change
    create_table :user_books do |t|
      t.references :user
      t.references :book
      t.timestamps
    end

    create_table :user_genres do |t|
      t.references :user
      t.references :genre
      t.timestamps
    end
  end
end
