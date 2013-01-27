# Define the Configuration
docpadConfig = {

	collections:
		pages: ->
			@getCollection("html").findAllLive({isPage:true})
		posts: ->
			@getCollection('html').findAllLive({relativeOutDirPath: 'posts'})

	templateData:
		site:
			title: "Curly Hair Coder"
}

# Export the Configuration
module.exports = docpadConfig
