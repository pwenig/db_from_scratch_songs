Sequel.migration do
  up do
  alter_table(:songs) do
    add_column :album, String
  end
  end
end

