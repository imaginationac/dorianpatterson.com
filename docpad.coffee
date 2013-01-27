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
			owner:
				name: "Dorian Patterson"
				email: "dorian.alexander.patterson@gmail.com"
				accounts:
					github: "imaginationac"
					twitter: "imaginationac"
}

# Export the Configuration
module.exports = docpadConfig
