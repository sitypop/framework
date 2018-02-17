require 'framework'

app = new App
	chrome: "safari"
	title: 'framework.com'

 # Home View

myView = new View
	title: "Home"
	padding: null
	key: "0.0.0"
	
Utils.bind myView, ->
	null
	
myView.onLoad (a, b, c) ->
	layer = new Layer
		parent: @content
		x: Align.center
		y: 32
	
	button = new Button
		parent: @content
		x: Align.center
		width: @width - 64
		y: layer.maxY + 40
		select: -> app.showNext(secondView)

# Second View

secondView = new View
	title: "Home"
	padding: null
	key: '1.0.0'
	
Utils.bind secondView, ->
	null
		
secondView.onLoad ->
	layer = new Layer
		parent: @content
		x: Align.center
		y: 32
		
		

app.showNext myView