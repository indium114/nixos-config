{
  pkgs,
  ...
}:

{

  xdg.configFile."calcurse/conf".text = ''
    appearance.calendarview=monthly
    appearance.compactpanels=yes
    appearance.defaultpanel=calendar
    appearance.layout=3
    appearance.headerline=yes
    appearance.eventseparator=yes
    appearance.dayseparator=yes
    appearance.emptyline=yes
    appearance.emptyday=--
    appearance.notifybar=yes
    appearance.sidebarwidth=12
    appearance.theme=magenta on default
    appearance.todoview=hide-completed
    appearance.headingpos=right-justified
    daemon.enable=no
    daemon.log=no
    format.inputdate=1
    format.notifydate=%a %F
    format.notifytime=%T
    format.appointmenttime=%H:%M
    format.outputdate=%D
    format.dayheading=%B %e, %Y
    general.autogc=no
    general.autosave=yes
    general.confirmdelete=yes
    general.confirmquit=no
    general.firstdayofweek=sunday
    general.multipledays=yes
    general.periodicsave=0
    general.systemevents=yes
    notification.command=${pkgs.libnotify}/bin/notify-send Appointment "$(${pkgs.calcurse}/bin/calcurse --next)" --icon calendar
    notification.notifyall=all
    notification.warning=300
  '';

}
