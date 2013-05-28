require 'generators/thorax/resource_helpers'

module Thorax
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Thorax::Generators::ResourceHelpers

      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs backbone.js, handlebars, thorax and thorax-mobile in app/assets/javascripts/thorax"

      class_option :skip_git,  :type    => :boolean, :aliases => "-G", :default => false, :desc => "Skip Git ignores and keeps"

      def inject_thorax
        inject_into_file "app/assets/javascripts/application.js", :before => "//=require_tree" do
             return "//= require underscore\n" +
             "//= require backbone\n" +
             "//= require backbone_rails_sync\n" +
             "//= require backbone_datalink\n" +
             "//= require backbone/#{application_name.underscore}\n"
        end
      end

      def create_dir_layout
        ['routers', 'models', 'views', 'templates'].each do |dir|
          empty_directory "app/assets/javascripts/thorax/#{dir}"
          create_file("app/assets/javascripts/thorax/#{dir}/.gitkeep") unless options[:skip_git]
        end
      end

      def create_app_file
        template("app.coffee", "app/assets/javascripts/thorax/#{application_name.underscore}.js/coffee")
      end

    end
  end
end



