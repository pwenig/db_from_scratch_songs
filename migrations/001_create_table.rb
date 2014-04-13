Sequel.migration do
  up do
    create_table(:songs) do
      primary_key :id
      String :song, :null=>false
    end
  end

  down do
    drop_table(:songs)
  end
end