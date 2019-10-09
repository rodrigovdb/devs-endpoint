class ApplicationController < ActionController::Base
  def index
    @p = { method: request.method }

    params.each { |k, v| @p[k] = v unless %w[controller action].include?(k) }
  end

  def form
  end
end
