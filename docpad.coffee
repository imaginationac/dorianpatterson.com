# Define the Configuration
docpadConfig = {
	templateData:
		site:
			title: "Curly Hair Coder"
		
		getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
		collections:
			pages: ->
				@getCollection("html").findAllLive({isPage:true})
}

# Export the Configuration
module.exports = docpadConfig
