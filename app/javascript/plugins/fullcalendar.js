import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import listPlugin from '@fullcalendar/list';


const calendar = () => {

  const calendarEl = document.getElementById('calendar');
  const todoEl = document.getElementById('todolist');

  if (calendarEl) {
    document.addEventListener('DOMContentLoaded', function() {
      const calendar = new Calendar(calendarEl, {
        plugins: [ dayGridPlugin],
        events: '/api/events',
        defaultView: 'dayGridMonth',
      });

      calendar.render();
    });
  }

  if (todoEl) {
    document.addEventListener('DOMContentLoaded', function() {
      reloadToDo(todoEl);
    });
  }
}

const reloadToDo = (todoEl) => {
  console.log('HI FROM RELOADTODO');
  todoEl.innerHTML = "";
  const calendar = new Calendar(todoEl, {
    plugins: [ dayGridPlugin, listPlugin ],
    events: '/api/events',
    header: {
      left:   'title',
      center: '',
      right:  'prev,next'
    },
    defaultView: 'listWeek',
    eventClick: function(info) {
      // console.log(info.event.extendedProps.todo_id);
      // Creer un lien et y passer l'id de la todo à marquer comme done.
      // "<a href="/todos/${}/mark_as_done">Mark as done !</a>"
    },
    eventRender: function(info) {
      const titleDiv = info.el.querySelector('.fc-list-item-title');
      titleDiv.parentElement.firstChild.remove();
      // const eventRow = info.el.querySelector('.fc-list-item')
      const eventRow = titleDiv.parentElement;
      if (info.event.extendedProps.done_status) {
        var html = `<td class='fc-list-item-title fc-widget-content' ><i class="fas fa-check"></i></a></td>`;
      } else {
        var html = `<td class='fc-list-item-title fc-widget-content'><a href="/todos/${info.event.extendedProps.todo_id}/mark_as_done" data-remote='true' data-todo='${info.event.extendedProps.todo_id}'><i class="fas fa-check light"></i></a></td>`;
      }
      info.el.insertAdjacentHTML('beforeend', `<td class='fc-list-item-title fc-widget-content'>${info.event.extendedProps.description}</td>`);
      // const check = info.el.insertAdjacentHTML('beforeend', `<td class='fc-list-item-title fc-widget-content'><i class="fas fa-check "></i></td>`);
      info.el.insertAdjacentHTML('beforeend', html);
    },
  });
  calendar.render();

}



export { calendar, reloadToDo };
