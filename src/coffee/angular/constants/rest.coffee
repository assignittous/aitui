App
  .constant "restfulHttp",
    index:
      method: 'GET'
      isArray: true
      headers: 
        'Content-Type': 'application/json'   
    show:
      method: 'GET'
      isArray: false
      headers: 
        'Content-Type': 'application/json'   
    # if using with rails, make sure to use with respond_with location: nil
    create:
      method: 'POST'
      headers: 
        'Content-Type': 'application/json'          
    update: 
      method: 'PATCH'
      headers: 
        'Content-Type': 'application/json'
    destroy: 
      method: 'DELETE'
      headers: 
        'Content-Type': 'application/json'       