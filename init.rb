#*******************************************************************************
# set_assignee_on_commit Redmine plugin.
#
# Authors:
# - https://github.com/team888
#
# Terms of use:
# - GNU GENERAL PUBLIC LICENSE Version 2
#*******************************************************************************

require "set_assignee_on_commit/hooks.rb"

Redmine::Plugin.register :set_assignee_on_commit do
  name 'Set assignee on commit plugin'
  author 'team888'
  description 'Set specified user as assignee via repository commit with fixing keywords.'
  version '0.1.0'
  url 'http://www.redmine.org/plugins/set_assignee_on_commit'
  author_url 'https://github.com/team888'
  
  settings :default => {'empty' => true}, :partial => 'settings/set_assignee_on_commit_settings'
end
