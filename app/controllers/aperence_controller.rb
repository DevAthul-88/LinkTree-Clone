class AperenceController < ApplicationController
    before_action :authenticate_user!
    def aperence
    
    end
    def index
        @should_render_navbar = true
      end
end
