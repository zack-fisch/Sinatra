require 'sinatra'
require 'slim'

get '/' do
	slim :index
end

__END__ # In slim templating, all views are in the .rb file and come after __END__
# layout is also occurs in same file


@@layout
doctype html
html
	head
		meta charset="utf-8"
		title Just Do it
		link rel ="stylesheet" media="screen, projection" href="/styles.css"
		/if[lt IE 9]
				sscript src="http://html5shiv.googlecode.com/svn/trunk/html5.js"
		body
			h1 Just Do it
			== yield

@@index 
h2 my Tasks
ul.Tasks
	li Get Milk