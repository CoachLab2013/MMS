ECHO "Setting Up Scheduler"

SCHTASKS /Create  /TN "Reports PDF Daily" /TR "'../Reports_PDF_Daily.jar'" /SC daily /ST 03:00
SCHTASKS /Create  /TN "Reports Excel Daily" /TR "'../Reports_Excel_Daily.jar'" /SC daily /ST 03:00

SCHTASKS /Create  /TN "Reports PDF Weekly" /TR "'../Reports_PDF_Weekly.jar'" /SC weekly /d SUN /ST 03:00
SCHTASKS /Create  /TN "Reports Excel Weekly" /TR "'../Reports_Excel_Weekly.jar'" /SC weekly /d SUN /ST 03:00

SCHTASKS /Create  /TN "Reports PDF Monthly" /TR "'../Reports_PDF_Monthly.jar'" /SC monthly /M * /MO lastday /ST 03:00
SCHTASKS /Create  /TN "Reports Excel Monthly" /TR "'../Reports_Excel_Monthly.jar'" /SC monthly /M * /MO lastday /ST 03:00

ECHO "Scheduling Complete"