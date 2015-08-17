App
  # ## Checklist Item
  .factory "Checklist", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/checklist_items/:id?:params",
      { 
        id: '@id' 
      }, restfulHttp
  # ## Comment
  .factory "Comment", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/comments/:id?:params",
      { 
        id: '@id' 
      }, restfulHttp
  # ## Time Entry
  .factory "TimeEntry", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/time_entries/:id?:params",
      { 
        id: '@id' 
      }, restfulHttp    
  # ## Attachment Item
  .factory "Attachment", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/attachments/:id?:params",
      { 
        id: '@id' 
      }, restfulHttp
  # ## Assignable User
  .factory "AssignableUser", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/support/assignable_users",
      { 
        id: '@id' 
      }, restfulHttp
  # ## Organizations
  .factory "Organization", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/support/organizations",
      { 
        id: '@id' 
      }, restfulHttp
  # ## Assignments
  .factory "Assignment", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/assignments?:params",
      { 
        id: '@id' 
      }, restfulHttp  
  # ## Work Units
  .factory "WorkUnit", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/work_units/:id?:params",
      { 
        id: '@id' 
      }, restfulHttp        
  .factory "Project", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/projects/:id?:params",
      { 
        id: '@id' 
      }, restfulHttp              
  .factory "Timeline", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/timeline",
      { 
      }, restfulHttp                    
  .factory "User", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/users/:id?:params",
      { 
        id: '@id' 
      }, restfulHttp                    
  .factory "Account", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/accounts/:id?:params",
      { 
        id: '@id'       
      }, restfulHttp                
  .factory "Identity", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/identities/:id?:params",
      { 
        id: '@id'       
      }, restfulHttp       
  .factory "Search", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/search?:params",
      { 
        q: "@query"   
      }, restfulHttp                

  .factory "ReportOutput", ($resource, current, restfulHttp) ->
    return $resource "/#{current.apiPath}/reports/:category/:report?:params",
      { 
        category: "@category"   
        report: "@report"
      }, restfulHttp                
