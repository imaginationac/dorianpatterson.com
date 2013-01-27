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

		# Helper functions

		# Prepare the content for the title element.
		getPreparedTitle: ->
			if @document.title then "#{@document.title} | #{@site.title}" else @site.title

		# Compare post dates for sorting in REVERSE chronlogical order (latest first).
		compareDate: (@a, @b) ->
			@b.date - @a.date

		# TODO: Format date strings. (Month dd, year @ hh:mm (a/p)m)

}

# Export the Configuration
module.exports = docpadConfig
