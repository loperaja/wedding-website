class HomeController < ApplicationController

def index
@guest = Guest.first
end

end
