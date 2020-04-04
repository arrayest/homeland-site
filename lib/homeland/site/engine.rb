# frozen_string_literal: true

module Homeland::Site
  class Engine < ::Rails::Engine
    isolate_namespace Homeland::Site

    initializer "homeland.site.migrate" do |app|
      Homeland.migrate_plugin(File.expand_path('../../../migrate', __dir__))
    end

    initializer "homeland.site.init" do |app|
      app.routes.prepend do
        mount Homeland::Site::Engine => "/"
      end
    end
  end
end
