require_dependency 'redmine_custom_css/hooks'

Redmine::Plugin.register :redmine_custom_css do
  name 'Redmine Custom CSS plugin'
  author 'Martin DENIZET'
  description 'Allows to customize Redmine\'s CSS'
  version '0.1.4'
  url 'https://github.com/martin-denizet/redmine_custom_css'
  author_url 'http://martin-denizet.com'


  settings :default => {
      :css => '',
  },
  :partial => 'settings/custom_css'


end
