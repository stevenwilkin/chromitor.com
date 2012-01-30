require './lib/no_www'

use NoWWW

use Rack::Static, :urls => [''], :root => 'public', :index => 'index.html'

run lambda { |env| [404, {'Content-Type' => 'text/plain'}, 'Not found'] }
