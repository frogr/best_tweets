class BaseController < Tinyrails::Controller
  def get_id_from_rack
    return @env["route.id"]
  end

  def get_form_params
    request = Rack::Request.new(@env)
    request.params
  end

   def redirect_to(path)
    [302, { 'location' => path }, ['Redirecting...']]
   end
end