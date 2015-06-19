this.businessDaysFrom = function(start_date, days, businessDays) {
  var remaining_days, test_date;
  if (!businessDays) {
    businessDays = [1, 2, 3, 4, 5];
  }
  alert(1);
  remaining_days = days;
  test_date = start_date;
  while (remaining_days > 0) {
    if (businessDays.some(test_date.getWeekday())) {
      remaining_days--;
    }
    test_date.advance('1 day');
  }
  test_date.rewind('1 day');
  return test_date;
};

this.businessDaysBetween = function(startDate, endDate, businessDays) {
  var calendar_days, test_date;
  if (!businessDays) {
    businessDays = [1, 2, 3, 4, 5];
  }
  calendar_days = [];
  test_date = startDate;
  while (test_date <= endDate) {
    calendar_days.push(test_date.getWeekday());
    test_date.advance('1 day');
  }
  calendar_days.remove(function(n) {
    return businessDays.some(n) === false;
  });
  return calendar_days.length;
};

this.noOp = function(parm) {
  return logger.noOp(parm);
};
