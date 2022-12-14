table_names = %w(
  posts
)

table_names.each do |table_name|
  path = Rails.root.join('db', 'seeds', Rails.env, "#{table_name}.rb")

  next unless File.exist?(path)

  puts "Creating #{table_name}..."
  require path
end