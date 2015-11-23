# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
module SetAssigneeOnCommit
  class Hooks < Redmine::Hook::ViewListener

    # redmine view hook which called at creation of new Issue ticket window
    # http://www.redmine.org/projects/redmine/wiki/Hooks_List
    def model_changeset_scan_commit_for_issue_ids_pre_issue_update(context={})
      issue = context[:issue]
      assignee_name = Setting.plugin_set_assignee_on_commit['assignee_name']
      assignee = User.where(login: assignee_name).first
      issue.assigned_to = assignee if assignee
    end
  end
end