class BetsController < ApplicationController
    def index
        @games = Game.all
      end
    
      # Możesz mieć inne akcje tu, np. show, new, create, edit, itp.
    end