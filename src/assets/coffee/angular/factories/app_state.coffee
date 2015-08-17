# # App State Service

# Manages the UI state of the application

App
  .factory "AppStateService", ($location, $mdBottomSheet, $mdDialog)->
    return {
      context: ""
      lastContext: ""
      currentId: null
      showReports: false
      showTabs: false
      showFilterBar: false
      showAddButton: false
      addTooltip: ""
      addIconClass: "aitu-content-add"
      showEditButton: false
      editTooltip: ""
      editIconClass: "aitu-editor-mode-edit"
      isEditing: false
      isNew: false
      backUrl: "#/"
      subcontext: ""
      urlHistory: []

      init: (context, subcontext)->
        # hide overlays on route
        $mdBottomSheet.hide()
        $mdDialog.hide()
        
   





    }