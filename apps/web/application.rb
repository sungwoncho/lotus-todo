require "lotus/helpers"

module Web
  class Application < Lotus::Application

    configure do
      root __dir__

      load_paths << [
        'controllers',
        'views'
      ]

      routes 'config/routes'

      layout :application

      templates 'templates'
    end


    ##
    # Development
    #
    configure :development do
      # Don't handle exceptions, render the stack trace
      handle_exceptions false

      # Serve static assets during development
      serve_assets      true
    end

    ##
    # TEST
    #
    configure :test do
      # Don't handle exceptions, render the stack trace
      handle_exceptions false

      # Serve static assets during development
      serve_assets      true
    end

    ##
    # PRODUCTION
    #
    configure :production do
      # scheme 'https'
      # host   'example.org'
      # port   443
    end
  end
end
