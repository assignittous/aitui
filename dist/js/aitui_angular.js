App.constant("restfulHttp", {
  index: {
    method: 'GET',
    isArray: true,
    headers: {
      'Content-Type': 'application/json'
    }
  },
  show: {
    method: 'GET',
    isArray: false,
    headers: {
      'Content-Type': 'application/json'
    }
  },
  create: {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    }
  },
  update: {
    method: 'PATCH',
    headers: {
      'Content-Type': 'application/json'
    }
  },
  destroy: {
    method: 'DELETE',
    headers: {
      'Content-Type': 'application/json'
    }
  }
});

App.filter('effortHours', function() {
  return function(input, option) {
    return (input / 60).format(2);
  };
});

App.filter('humanEffort', function(PersonEffort) {
  return function(input, option) {
    var abbreviate, input_type, pre;
    abbreviate = false;
    if (option != null) {
      if (option.abbreviate != null) {
        abbreviate = option.abbreviate;
      }
    }
    input_type = typeof input;
    if (input_type === "number") {
      input = "" + input;
    }
    pre = PersonEffort.humanize(PersonEffort.parse(input || ""), true);
    if (abbreviate) {
      pre = pre.replace('minutes', 'm');
      pre = pre.replace('minute', 'm');
      pre = pre.replace('hours', 'h');
      pre = pre.replace('hours', 'h');
      pre = pre.replace('hour', 'h');
    }
    return pre;
  };
});
