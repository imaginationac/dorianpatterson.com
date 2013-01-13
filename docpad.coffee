# Define the Configuration
docpadConfig = {
	templateData:
		site:
			title: "Dorian Patterson"
		
		getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
}

# Export the Configuration
module.exports = docpadConfig
