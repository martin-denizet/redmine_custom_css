module RedmineCustomCss
  class RedmineCustomCssHookListener < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      css = Setting.plugin_redmine_custom_css['css']
      "<style type=\"text/css\">#{css}</style>" unless css.nil? or css.empty?
    end
  end
end