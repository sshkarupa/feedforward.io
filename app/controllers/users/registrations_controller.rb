class Users::RegistrationsController < Devise::RegistrationsController
  protected

    def update_resource(resource, params)
      if params.has_key? :current_password
        resource.update_with_password(params)
      else
        resource.update_without_password(params)
      end
    end
end

