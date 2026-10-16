require 'base64'

html_path = ARGV.fetch(0)
base_dir = File.dirname(html_path)
mime_types = {
  '.jpeg' => 'image/jpeg',
  '.jpg' => 'image/jpeg',
  '.png' => 'image/png',
  '.svg' => 'image/svg+xml'
}

html = File.binread(html_path)
html.gsub!(%r{(?:assets|diagrams)/[A-Za-z0-9._-]+\.(?:png|jpe?g|svg)}) do |relative_path|
  file_path = File.join(base_dir, relative_path)
  mime_type = mime_types.fetch(File.extname(file_path))
  encoded = Base64.strict_encode64(File.binread(file_path))
  "data:#{mime_type};base64,#{encoded}"
end

File.binwrite(html_path, html)
