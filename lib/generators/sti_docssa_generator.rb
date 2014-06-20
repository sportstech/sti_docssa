class StiDocssaGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :project_class, :type => :string, :default => "sti_app"
  class_option :tablet, :type => :boolean, :default => true, :desc => "Include tablet css and layout files."

    def generate_layout
      # master sass files
      copy_file "custom_desktop.sass", Rails.root.join("app","assets","stylesheets","custom_desktop.sass")
      copy_file "custom_handheld.sass", Rails.root.join("app","assets","stylesheets","custom_handheld.sass")
      copy_file "custom_tablet.sass", Rails.root.join("app","assets","stylesheets","custom_tablet.sass") if options.tablet?

      # base sass files
      copy_file "base/__base.sass", Rails.root.join("app","assets","stylesheets", "base/__base.sass")
      copy_file "base/_config.sass", Rails.root.join("app","assets","stylesheets", "base/_config.sass")
      
      copy_file "base/project/__project.sass", Rails.root.join("app","assets","stylesheets", "base/project/__project.sass")
      copy_file "base/project/_fonts.sass", Rails.root.join("app","assets","stylesheets", "base/project/_fonts.sass")
      copy_file "base/project/_globals.sass", Rails.root.join("app","assets","stylesheets", "base/project/_globals.sass")
      copy_file "base/project/_helpers.sass", Rails.root.join("app","assets","stylesheets", "base/project/_helpers.sass")
      copy_file "base/project/_variables.sass", Rails.root.join("app","assets","stylesheets", "base/project/_variables.sass")

      copy_file "base/utils/__utils.sass", Rails.root.join("app","assets","stylesheets", "base/utils/__utils.sass")
      copy_file "base/utils/_functions.sass", Rails.root.join("app","assets","stylesheets", "base/utils/_functions.sass")
      copy_file "base/utils/_helpers.sass", Rails.root.join("app","assets","stylesheets", "base/utils/_helpers.sass")
      copy_file "base/utils/_mixins.sass", Rails.root.join("app","assets","stylesheets", "base/utils/_mixins.sass")
      copy_file "base/utils/_system.sass", Rails.root.join("app","assets","stylesheets", "base/utils/_system.sass")

      # component sass file
      copy_file "components/__components.sass", Rails.root.join("app","assets","stylesheets", "components/__components.sass")

      # specifit sass file
      copy_file "specifics/__specifics.sass", Rails.root.join("app","assets","stylesheets", "specifics/__specifics.sass")

      # vendor files
      copy_file "vendor/_normalize.scss", Rails.root.join("app","assets","stylesheets", "vendor/_normalize.scss")
      

      # html files
      @project_class = project_class
      template "layouts/desktop.html.erb", "app/views/layouts/desktop.html.erb"
      template "layouts/handheld.html.erb", "app/views/layouts/handheld.html.erb"
      template "layouts/tablet.html.erb", "app/views/layouts/tablet.html.erb" if options.tablet?
    end
end