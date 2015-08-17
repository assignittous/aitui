App.config ($routeProvider)->

  $routeProvider

    # assigned to me
    .when "/",
      templateUrl: "assigned_to_me/tasks.html"
      controller: "AssignedToMeController"  
      resolve:
        init: (AppStateService)->
          AppStateService.init "assigned_to_me", "tasks"
            
    .when "/timeline",
      templateUrl: "assigned_to_me/dashboard.html"
      controller: "AssignedToMeDashboardController"  
      resolve:
        init: (AppStateService)->
          AppStateService.init "assigned_to_me", "timeline"
                      
    # projects
    .when "/projects",
      templateUrl: "projects/projects.html"
      controller: "ProjectsController"  
      resolve:
        init: (AppStateService)->
          AppStateService.init "projects", "list"

    .when "/projects/summary",
      templateUrl: "projects/dashboard.html"
      #controller: "ProjectsController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "projects", "summary"

    # project
    .when "/projects/new",
      templateUrl: "project/form.html"
      controller: "ProjectFormController"   
      resolve:
        init: (AppStateService)->
          AppStateService.init "project", "new"

    .when "/projects/:id",
      templateUrl: "project/tasks.html"
      controller: "ProjectController"  
      resolve:
        init: (AppStateService)->
          AppStateService.init "project", "tasks"
          
    .when "/projects/:id/members",
      templateUrl: "project/members.html"
      controller: "ProjectController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "project", "members"

    .when "/projects/:id/summary",
      templateUrl: "project/dashboard.html"
      controller: "ProjectController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "project", "summary"
     
    .when "/projects/:id/edit",
      templateUrl: "project/form.html"
      controller: "ProjectFormController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "project", "edit"

    # work units
    .when "/work_units/new/:project_id",
      templateUrl: "work_unit/form.html"
      controller: "TaskFormController"      
      resolve:
        init: (AppStateService)->
          AppStateService.init "work_unit", "new"
            
    .when "/work_units/:id",
      templateUrl: "work_unit/dashboard.html"
      controller: "WorkUnitController" 
      resolve:
        init: (AppStateService)->
          AppStateService.init "work_unit", "summary"

    .when "/work_units/:id/checklist",
      templateUrl: "work_unit/checklist.html"
      controller: "WorkUnitChecklistController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "work_unit", "checklist"
          
    .when "/work_units/:id/comments",
      templateUrl: "work_unit/comments.html"
      controller: "WorkUnitCommentsController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "work_unit", "comments"
                   
    .when "/work_units/:id/time",
      templateUrl: "work_unit/time.html"
      controller: "WorkUnitTimeController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "work_unit", "time"
          
    .when "/work_units/:id/files",
      templateUrl: "work_unit/files.html"
      controller: "WorkUnitFilesController"   
      resolve:
        init: (AppStateService)->
          AppStateService.init "work_unit", "attachments"
             
    .when "/work_units/:id/edit",
      templateUrl: "work_unit/form.html"
      controller: "TaskFormController"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "work_unit", "edit"
            
    # directory
    .when "/directory",
      templateUrl: "directory/users.html"
      controller: "DirectoryController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "directory", "list"
            
    .when "/directory/summary",
      templateUrl: "directory/dashboard.html"
      resolve:
        init: (AppStateService)->
          AppStateService.init "directory", "summary"
               
    # users'
    .when "/users/new",
      templateUrl: "users/form.html"
      controller: "UserFormController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "directory", "new"
               
    # search
    .when "/search",
      templateUrl: "search/results.html"
      controller: "SearchController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "search"
               
    # settings
    .when "/settings/personal",
      templateUrl: "settings/personal.html"
      controller: "PersonalSettingsController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "settings", "personal"
            
               
            
    .when "/settings/account",
      templateUrl: "settings/account.html"
      controller: "AccountSettingsController"
      resolve:
        init: (AppStateService)->
          AppStateService.init "settings", "account"
            
              
             
    # reports

    # assigned to me

    .when "/reports/assigned_to_me/status",
      templateUrl: "reports/assigned_to_me/status.html" 
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "assigned_to_me.status"
 
 
    .when "/reports/assigned_to_me/time",
      templateUrl: "reports/assigned_to_me/time.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "assigned_to_me.time"
 
    
    .when "/reports/assigned_to_me/schedule",
      templateUrl: "reports/assigned_to_me/schedule.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "assigned_to_me.schedule"
            
               

    # projects
    .when "/reports/projects/executive_dashboard",
      templateUrl: "reports/projects/executive_dashboard.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "projects.executive_dashboard"
            
               
    .when "/reports/projects/listing",
      templateUrl: "reports/projects/listing.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "projects.listing"
            
               
    .when "/reports/projects/resourcing",
      templateUrl: "reports/projects/resourcing.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "projects.resourcing"
            
               

    # project
    .when "/reports/project/status",
      templateUrl: "reports/project/status.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "project.status"
            
               
    .when "/reports/project/plan",
      templateUrl: "reports/project/plan.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "project.plan"
            
               
    .when "/reports/project/dashboard",
      templateUrl: "reports/project/dashboard.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "project.dashboard"
            
               
    .when "/reports/project/time",
      templateUrl: "reports/project/time.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "project.time"
            
               
    .when "/reports/project/report_card",
      templateUrl: "reports/project/report_card.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "project.report_card"
            
               
    .when "/reports/project/rate_sheet",
      templateUrl: "reports/project/rate_sheet.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "project.rate_sheet"
            
               
    # directory
    .when "/reports/directory/contacts",
      templateUrl: "reports/directory/contacts.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "directory.contacts"
            
               
    .when "/reports/directory/time",
      templateUrl: "reports/directory/time.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "directory.time"
            
               
    .when "/reports/directory/report_cards",
      templateUrl: "reports/directory/report_cards.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "directory.report_cards"
            
               
    .when "/reports/directory/people_and_projects",
      templateUrl: "reports/directory/people_and_projects.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "directory.people_and_projects"
            
               
    .when "/reports/directory/rate_sheet",
      templateUrl: "reports/directory/rate_sheet.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "directory.rate_sheet"
            
               
    .when "/reports/directory/schedule",
      templateUrl: "reports/directory/schedule.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "directory.schedule"
            
               
    .when "/reports/directory/status",
      templateUrl: "reports/directory/status.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "reports", "directory.status"
            
               
    .when "/404",
      templateUrl: "common/404.html"    
      resolve:
        init: (AppStateService)->
          AppStateService.init "directory"
               
    .otherwise 
      redirectTo: "/404"
  return
