#
# redmine_custom_css - "redmine_custom_css" is Redmine plugin to add custom CSS
# editable through web interface
# Copyright (C) 2015 Martin DENIZET <martin.denizet@supinfo.com>
#
# This file is part of redmine_custom_css.
#
# redmine_custom_css is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# redmine_custom_css is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with redmine_custom_css.  If not, see <http://www.gnu.org/licenses/>.
#
module RedmineCustomCss
  class RedmineCustomCssHookListener < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      css = Setting.plugin_redmine_custom_css['css']
      "<style type=\"text/css\">#{css}</style>" unless css.nil? or css.empty?
    end
  end
end
