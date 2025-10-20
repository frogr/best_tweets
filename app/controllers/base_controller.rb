class BaseController < Tinyrails::Controller
  def get_id_from_rack
    return @env["route.id"]
  end
end