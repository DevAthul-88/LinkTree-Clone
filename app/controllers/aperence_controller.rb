class AperenceController < ApplicationController
    before_action :authenticate_user!
    def aperence
            @should_render_navbar = true
    end
end
