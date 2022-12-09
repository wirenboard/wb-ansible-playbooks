defineRule("alarm", {
  when: cron("0 0 7 * *"),
  then: function () {
    dev["wb-msw-v3_31/Buzzer"] = true;
    setTimeout(function () {
      dev["wb-msw-v3_31/Buzzer"] = false;
    }, 5000);
  }
});