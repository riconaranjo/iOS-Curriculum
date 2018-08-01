##
# this script adds a table of contents to README.md
# with link references to each workshop folder
##

all_files =  Dir.entries(".")

hidden_files = [".", "..", ".DS_Store", "script.rb", "img", ".git", ".gitignore", "README.md", "Additional Notes.md"]

files = all_files - hidden_files

intro = "##\n\n"

table = "###\n\n"

text = intro + table

files.sort!

files.each do |f|
	file_name = "[#{f}]"
	file_path = "(#{f})"
	file_path.gsub!(" ", "%20")		# replace all spaces with %20 [for html rendering]
	file_name.gsub!(".md]", "]")	# remove file extension
	text += "- #{file_name}#{file_path}\n"
end

File.open("README.md", "w") { |file| file.write(text) }