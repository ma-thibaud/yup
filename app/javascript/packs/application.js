import "bootstrap";
import calendar from '../plugins/fullcalendar';
import '@fullcalendar/core/main.css';
import '@fullcalendar/daygrid/main.css';
import '@fullcalendar/list/main.css';
import { initiateDashboardTab } from '../components/dashboard_tabs'

calendar();
initiateDashboardTab();
