// app/assets/config/manifest.js
// ...
//= link_tree ../images
//= link_directory ../stylesheets .css
{
  "background_color": "white",
  "description": "Best people management for your business. ",
  "display": "fullscreen",
  "name": "Yudensetsu App",
  "icons": [
  <% files = Dir.entries(Rails.root.join("app/assets/images/icons/")).select {|f| !File.directory? f} %>
  <% files.each_with_index do |file, index| %>
  <% match = file.match(/.+-(?<size>\d{2,3}x\d{2,3}).png/) %>
  {
    "src": "<%= image_path "icons/#{file}" %>",
    "sizes": "<%= match && match[:size] %>",
    "type": "image/png"
  }<%= "," unless (files.size - 1) == index %>
  <% end %>ß
  ]
}
//= link manifest.json
