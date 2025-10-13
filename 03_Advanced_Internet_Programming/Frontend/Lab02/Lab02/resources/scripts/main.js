import { CanvasDrawer } from './CanvasDrawer.js';
import { Task         } from './Task.js';

const canvas = document.getElementById('displayed-canvas');
const drawer = new CanvasDrawer(canvas);

const todo          = document.getElementById('todo-column');
const inprogress    = document.getElementById('inprogress-column');
const done          = document.getElementById('done-column');

const tasks =[
    new Task (1, 'Learn about ES Modules','todo'),
    new Task (2, 'Style the Kanban board', 'inprogress'),
];

function renderTasks() {
    [todo, inprogress, done].forEach(c => {
        while(c.children.length > 1) {
            c.removeChild(c.lastChild);
        }
    });
    
    tasks.forEach(t => {
        const taskDiv = document.createElement('div');
        taskDiv.classList.add('card');
        taskDiv.textContent = t.text;

        if(t.status === 'todo') {
            todo.appendChild(taskDiv);
        } else if (t.status == 'inprogress') {
            inprogress.appendChild(taskDiv);
        } else if ( t.status == 'done') {
            inprogress.appendChild(taskDiv);
        }
    });
}

console.log(tasks);

renderTasks();