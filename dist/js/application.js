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

App.config(function($routeProvider) {
  $routeProvider.when("/", {
    templateUrl: "assigned_to_me/tasks.html",
    controller: "AssignedToMeController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("assigned_to_me", "tasks");
      }
    }
  }).when("/timeline", {
    templateUrl: "assigned_to_me/dashboard.html",
    controller: "AssignedToMeDashboardController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("assigned_to_me", "timeline");
      }
    }
  }).when("/projects", {
    templateUrl: "projects/projects.html",
    controller: "ProjectsController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("projects", "list");
      }
    }
  }).when("/projects/summary", {
    templateUrl: "projects/dashboard.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("projects", "summary");
      }
    }
  }).when("/projects/new", {
    templateUrl: "project/form.html",
    controller: "ProjectFormController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("project", "new");
      }
    }
  }).when("/projects/:id", {
    templateUrl: "project/tasks.html",
    controller: "ProjectController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("project", "tasks");
      }
    }
  }).when("/projects/:id/members", {
    templateUrl: "project/members.html",
    controller: "ProjectController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("project", "members");
      }
    }
  }).when("/projects/:id/summary", {
    templateUrl: "project/dashboard.html",
    controller: "ProjectController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("project", "summary");
      }
    }
  }).when("/projects/:id/edit", {
    templateUrl: "project/form.html",
    controller: "ProjectFormController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("project", "edit");
      }
    }
  }).when("/work_units/new/:project_id", {
    templateUrl: "work_unit/form.html",
    controller: "TaskFormController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("work_unit", "new");
      }
    }
  }).when("/work_units/:id", {
    templateUrl: "work_unit/dashboard.html",
    controller: "WorkUnitController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("work_unit", "summary");
      }
    }
  }).when("/work_units/:id/checklist", {
    templateUrl: "work_unit/checklist.html",
    controller: "WorkUnitChecklistController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("work_unit", "checklist");
      }
    }
  }).when("/work_units/:id/comments", {
    templateUrl: "work_unit/comments.html",
    controller: "WorkUnitCommentsController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("work_unit", "comments");
      }
    }
  }).when("/work_units/:id/time", {
    templateUrl: "work_unit/time.html",
    controller: "WorkUnitTimeController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("work_unit", "time");
      }
    }
  }).when("/work_units/:id/files", {
    templateUrl: "work_unit/files.html",
    controller: "WorkUnitFilesController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("work_unit", "attachments");
      }
    }
  }).when("/work_units/:id/edit", {
    templateUrl: "work_unit/form.html",
    controller: "TaskFormController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("work_unit", "edit");
      }
    }
  }).when("/directory", {
    templateUrl: "directory/users.html",
    controller: "DirectoryController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("directory", "list");
      }
    }
  }).when("/directory/summary", {
    templateUrl: "directory/dashboard.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("directory", "summary");
      }
    }
  }).when("/users/new", {
    templateUrl: "users/form.html",
    controller: "UserFormController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("directory", "new");
      }
    }
  }).when("/search", {
    templateUrl: "search/results.html",
    controller: "SearchController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("search");
      }
    }
  }).when("/settings/personal", {
    templateUrl: "settings/personal.html",
    controller: "PersonalSettingsController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("settings", "personal");
      }
    }
  }).when("/settings/account", {
    templateUrl: "settings/account.html",
    controller: "AccountSettingsController",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("settings", "account");
      }
    }
  }).when("/reports/assigned_to_me/status", {
    templateUrl: "reports/assigned_to_me/status.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "assigned_to_me.status");
      }
    }
  }).when("/reports/assigned_to_me/time", {
    templateUrl: "reports/assigned_to_me/time.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "assigned_to_me.time");
      }
    }
  }).when("/reports/assigned_to_me/schedule", {
    templateUrl: "reports/assigned_to_me/schedule.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "assigned_to_me.schedule");
      }
    }
  }).when("/reports/projects/executive_dashboard", {
    templateUrl: "reports/projects/executive_dashboard.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "projects.executive_dashboard");
      }
    }
  }).when("/reports/projects/listing", {
    templateUrl: "reports/projects/listing.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "projects.listing");
      }
    }
  }).when("/reports/projects/resourcing", {
    templateUrl: "reports/projects/resourcing.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "projects.resourcing");
      }
    }
  }).when("/reports/project/status", {
    templateUrl: "reports/project/status.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "project.status");
      }
    }
  }).when("/reports/project/plan", {
    templateUrl: "reports/project/plan.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "project.plan");
      }
    }
  }).when("/reports/project/dashboard", {
    templateUrl: "reports/project/dashboard.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "project.dashboard");
      }
    }
  }).when("/reports/project/time", {
    templateUrl: "reports/project/time.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "project.time");
      }
    }
  }).when("/reports/project/report_card", {
    templateUrl: "reports/project/report_card.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "project.report_card");
      }
    }
  }).when("/reports/project/rate_sheet", {
    templateUrl: "reports/project/rate_sheet.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "project.rate_sheet");
      }
    }
  }).when("/reports/directory/contacts", {
    templateUrl: "reports/directory/contacts.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "directory.contacts");
      }
    }
  }).when("/reports/directory/time", {
    templateUrl: "reports/directory/time.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "directory.time");
      }
    }
  }).when("/reports/directory/report_cards", {
    templateUrl: "reports/directory/report_cards.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "directory.report_cards");
      }
    }
  }).when("/reports/directory/people_and_projects", {
    templateUrl: "reports/directory/people_and_projects.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "directory.people_and_projects");
      }
    }
  }).when("/reports/directory/rate_sheet", {
    templateUrl: "reports/directory/rate_sheet.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "directory.rate_sheet");
      }
    }
  }).when("/reports/directory/schedule", {
    templateUrl: "reports/directory/schedule.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "directory.schedule");
      }
    }
  }).when("/reports/directory/status", {
    templateUrl: "reports/directory/status.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("reports", "directory.status");
      }
    }
  }).when("/404", {
    templateUrl: "common/404.html",
    resolve: {
      init: function(AppStateService) {
        return AppStateService.init("directory");
      }
    }
  }).otherwise({
    redirectTo: "/404"
  });
});

this.calendarBulletChart = function(forecastStart, forecastEnd, actualStart, actualEnd) {
  var actualDays, actualEndDate, actualStartDate, baseWidth, currentDate, forecastDays, forecastEndDate, forecastStartDate, pc, pixelsPerDay, pw, threshold, tx, url, z1w, z2w, z3w;
  baseWidth = 300;
  forecastStartDate = Date.create(forecastStart);
  forecastEndDate = Date.create(forecastEnd);
  actualStartDate = Date.create(actualStart);
  actualEndDate = Date.create(actualEnd);
  currentDate = Date.create();
  if (actualEndDate != null) {
    actualDays = actualEndDate.daysSince(forecastStartDate);
  } else {
    actualDays = currentDate.daysSince(forecastStartDate);
  }
  forecastDays = forecastEndDate.daysSince(forecastStartDate);
  pixelsPerDay = (300 * 0.75) / forecastDays;
  tx = 300 * 0.75;
  threshold = parseInt(5 * pixelsPerDay);
  z1w = tx - threshold;
  z2w = threshold * 2;
  z3w = 300 - z2w - z1w;
  pw = parseInt(actualDays * pixelsPerDay);
  if (actualEndDate > forecastEndDate) {
    pc = 'red';
  } else {
    pc = 'black';
  }
  url = App.Globals.chartServer + "";
  return "http://piapp.lvh.me:83/bullet.svg?z1w=" + z1w + "&z2w=" + z2w + "&z3w=" + z3w + "&h=20&pw=" + pw + "&pc=" + pc + "&ph=6&tx=" + tx + "&th=10";
};

App.directive("microWinLossChart", function() {
  var linkFunction;
  linkFunction = function(scope, elements, attributes) {
    scope.width = attributes["width"] || "150";
    scope.height = attributes["barHeight"] || "30";
    scope.data = scope.ngModel;
    scope.winClass = function(val) {
      if (val > 0) {
        switch (val) {
          case 1:
          case 2:
            return "red";
          case 3:
          case 4:
          case 5:
            return "yellow";
          case 6:
          case 7:
          case 8:
            return "green";
          default:
            return "blue";
        }
      }
    };
    return scope.lossClass = function(val) {
      if (val === 0) {
        return "loss";
      }
    };
  };
  return {
    restrict: "E",
    scope: {
      ngModel: '=ngModel'
    },
    replace: true,
    templateUrl: "directives/win_loss_chart.html",
    link: linkFunction
  };
});

App.directive("multiAvatar", function() {
  return {
    restrict: "E",
    link: function(scope, elements, attributes) {
      var attr, id, isGravatar, s, service, services, size, tag;
      size = attributes["size"] || "48";
      services = [
        {
          id: "facebook",
          tpl: "<img src=\"http://graph.facebook.com/{id}/picture?width=" + size + "&height=" + size + "\" />"
        }, {
          id: "twitter",
          tpl: "<img src=\"https://pbs.twimg.com/profile_images/{id}_bigger.jpeg\" />"
        }, {
          id: "github",
          tpl: "<img src=\"https://identicons.github.com/{id}.png\" style=\"width:" + size + "px; height:" + size + "px\" />"
        }, {
          id: "gravatar",
          tpl: "<img src=\"https://secure.gravatar.com/avatar/{id}?s=" + size + "&d=mm\" style=\"width:" + size + "px; height:" + size + "px\" />"
        }
      ];
      s = 0;
      while (s < services.length) {
        service = services[s];
        attr = service.id + "Id";
        id = attributes[attr];
        isGravatar = attr === "gravatarId";
        if (isGravatar || (id && id.length > 0)) {
          if (!id) {
            id = "";
          }
          tag = service.tpl.replace("{id}", id);
          elements.append(tag);
        }
        s++;
      }
    }
  };
});

App.directive("pieChart", function() {
  var linkFunction;
  linkFunction = function(scope, element, attributes) {
    var data, height, options, width;
    data = scope.data;
    width = attributes['width'] || 200;
    height = attributes['height'] || 200;
    options = {
      donut: false,
      width: width + "px",
      height: height + "px",
      showLabel: false
    };
    new Chartist.Pie(element[0], data, options);
    scope.$watch("data", (function(newValue, oldValue) {
      if (newValue !== oldValue) {
        new Chartist.Pie(element[0], newValue, options);
      }
    }), true);
    return true;
  };
  return {
    restrict: "E",
    scope: {
      data: '=data'
    },
    replace: true,
    link: linkFunction
  };
});

App.directive("radial", function() {
  var linkFunction;
  linkFunction = function(scope, element, attributes) {
    var data, donutWidth, options;
    data = scope.data;
    scope.size = parseInt(attributes['size']) || 200;
    donutWidth = attributes['donutWidth'] || (scope.size / 5);
    options = {
      donut: true,
      donutWidth: donutWidth,
      width: scope.size + "px",
      height: scope.size + "px",
      showLabel: false,
      plugins: [
        Chartist.plugins.ctPiMetric({
          style: {
            fontFamily: "'Arial'",
            fontSize: (scope.size / 4) + "px"
          },
          suffix: "%",
          labelOffset: {
            x: 0,
            y: 12
          }
        })
      ]
    };
    new Chartist.Pie(element[0], {
      series: [data, 100 - data]
    }, options);
    logger.object("options", options);
    scope.$watch("data", (function(newValue, oldValue) {
      var wrapper;
      if (newValue !== oldValue) {
        options = {
          donut: true,
          donutWidth: donutWidth,
          width: scope.size + "px",
          height: scope.size + "px",
          showLabel: false
        };
        wrapper = new Chartist.Pie(element[0], {
          series: [newObject, 100 - data]
        }, options);
      }
    }), true);
    return true;
  };
  return {
    restrict: "E",
    template: "<div class=\"ct-chart ct-radial\"></div>",
    scope: {
      data: '=data'
    },
    replace: true,
    link: linkFunction
  };
});

App.controller("InterfaceController", function($scope, $rootScope, $mdBottomSheet, $mdDialog, $mdSidenav, $mdMedia, $mdToast) {});

App.factory("AppStateService", function($location, $mdBottomSheet, $mdDialog) {
  return {
    context: "",
    lastContext: "",
    currentId: null,
    showReports: false,
    showTabs: false,
    showFilterBar: false,
    showAddButton: false,
    addTooltip: "",
    addIconClass: "aitu-content-add",
    showEditButton: false,
    editTooltip: "",
    editIconClass: "aitu-editor-mode-edit",
    isEditing: false,
    isNew: false,
    backUrl: "#/",
    subcontext: "",
    urlHistory: [],
    init: function(context, subcontext) {
      $mdBottomSheet.hide();
      return $mdDialog.hide();
    }
  };
});

App.factory("PersonEffort", function(current) {
  return {
    hours_per_day: 7.5,
    days_per_week: 5,
    weeks_per_month: 4,
    weeks_per_year: 52,
    day: function() {
      return this.hours_per_day * 60;
    },
    week: function() {
      return this.days_per_week * this.day();
    },
    month: function() {
      return this.weeks_per_month * this.week();
    },
    year: function() {
      return this.weeks_per_year * this.week();
    },
    units: {
      minutes: {
        patterns: ["minute", "min", "m(?!s)"],
        formats: {
          chrono: ":",
          micro: "m",
          short: "min",
          long: "minute"
        }
      },
      hours: {
        patterns: ["hour", "hr", "h", ":"],
        formats: {
          chrono: ":",
          micro: "h",
          short: "hr",
          long: "hour"
        }
      },
      days: {
        patterns: ["day", "dy", "d"],
        formats: {
          chrono: ":",
          micro: "d",
          short: "day",
          long: "day"
        }
      },
      weeks: {
        patterns: ["week", "wk", "w"],
        formats: {
          chrono: ":",
          micro: "w",
          short: "wk",
          long: "week"
        }
      },
      months: {
        patterns: ["month", "mon", "mo", "mth"],
        formats: {
          chrono: ":",
          micro: "mo",
          short: "mth",
          long: "month"
        }
      },
      years: {
        patterns: ["year", "yr", "y"],
        formats: {
          chrono: ":",
          micro: "y",
          short: "yr",
          long: "year"
        }
      }
    },
    parse: function(string) {
      var i, j, mLen, nLen, numbers, options, regex, sum, unit;
      options = {
        minutes: 1,
        hours: 60,
        days: this.day(),
        weeks: this.week(),
        months: this.month(),
        years: this.year()
      };
      if (angular.isNumber(string)) {
        string = "" + string;
      }
      if (string != null) {
        for (unit in this.units) {
          i = 0;
          mLen = this.units[unit].patterns.length;
          while (i < mLen) {
            regex = new RegExp("((?:\\d+\\.\\d+)|\\d+)\\s?(" + this.units[unit].patterns[i] + "s?(?=\\s|\\d|\\b))", "gi");
            string = string.replace(regex, function(str, p1, p2) {
              return " " + (p1 * options[unit]).toString() + " ";
            });
            i++;
          }
        }
        sum = 0;
        numbers = string.replace(/(?!\.)\W+/g, " ").replace(/^\s+|\s+$|(?:and|plus|with)\s?/g, "").split(" ");
        j = 0;
        nLen = numbers.length;
        while (j < nLen) {
          if (numbers[j] && isFinite(numbers[j])) {
            sum += parseFloat(numbers[j]);
          } else if (!numbers[j]) {
            0;
          } else {
            0;
          }
          j++;
        }
        return sum;
      } else {
        return 0;
      }
    },
    humanize: function(minutes, start_at_hours) {
      var days, hours, humanized_effort, unit;
      humanized_effort = "";
      start_at_hours = start_at_hours || false;
      if (minutes != null) {
        minutes = parseInt(minutes);
        if (!isNaN(minutes)) {
          if (!start_at_hours) {
            if (minutes >= this.day()) {
              unit = "day";
              days = Math.floor(minutes / this.day());
              minutes = minutes - (days * this.day());
              if (days > 1) {
                unit = unit.pluralize();
              }
              humanized_effort = humanized_effort + (days + " " + unit + " ");
            }
          }
          if (minutes >= 60) {
            unit = "hour";
            hours = Math.floor(minutes / 60);
            minutes = minutes - (hours * 60);
            if (hours > 1) {
              unit = unit.pluralize();
            }
            humanized_effort = humanized_effort + (hours + " " + unit + " ");
          }
          if (minutes >= 0) {
            unit = "minute";
            if (minutes !== 1) {
              unit = unit.pluralize();
            }
            humanized_effort = humanized_effort + (minutes + " " + unit);
          }
          return humanized_effort;
        } else {
          return "0 minutes";
        }
      } else {
        return "0 minutes";
      }
    }
  };
});

App.factory("Checklist", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/checklist_items/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("Comment", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/comments/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("TimeEntry", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/time_entries/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("Attachment", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/attachments/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("AssignableUser", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/support/assignable_users", {
    id: '@id'
  }, restfulHttp);
}).factory("Organization", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/support/organizations", {
    id: '@id'
  }, restfulHttp);
}).factory("Assignment", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/assignments?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("WorkUnit", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/work_units/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("Project", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/projects/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("Timeline", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/timeline", {}, restfulHttp);
}).factory("User", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/users/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("Account", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/accounts/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("Identity", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/identities/:id?:params", {
    id: '@id'
  }, restfulHttp);
}).factory("Search", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/search?:params", {
    q: "@query"
  }, restfulHttp);
}).factory("ReportOutput", function($resource, current, restfulHttp) {
  return $resource("/" + current.apiPath + "/reports/:category/:report?:params", {
    category: "@category",
    report: "@report"
  }, restfulHttp);
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
