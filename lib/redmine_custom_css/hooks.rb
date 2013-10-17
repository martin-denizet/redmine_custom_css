module RedmineCustomCss
  class RedmineLoginAuditHookListener < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      css = Setting.plugin_redmine_custom_css['css']
      content_tag(:style, css, :type => 'text/css') unless css.nil? or css.empty?
    end
  end
end