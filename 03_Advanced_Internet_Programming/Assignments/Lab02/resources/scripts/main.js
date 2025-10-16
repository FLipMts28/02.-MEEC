import { CanvasDrawer } from './CanvasDrawer.js';
import { Task         } from './Task.js';
//import { loadTasks    } from './Task.js';
//import { saveTasks    } from './Task.js';
//import { renderTasks  } from './Task.js';   

const canvas = document.getElementById('displayed-canvas');
const drawer = new CanvasDrawer(canvas);

let todo = document.getElementById('todo-column');
let inprogress = document.getElementById('inprogress-column');
let done = document.getElementById('done-column');
let cards = document.querySelectorAll('.card');
let dropzones = document.querySelectorAll('.dropzone');

let selected = null;

let tasks =[
    new Task (1, 'Learn about ES Modules','todo'),
    new Task (2, 'Style the Kanban board', 'inprogress'),
    new Task (3, 'Implement drag and drop', 'done'),
];

function loadTasks() {
    const saved = localStorage.getItem('tasks');

    if(saved) {
        const tasksTemp = JSON.parse(saved);
        tasks = tasksTemp.map(t => new Task(t.id, t.text, t.status, t.location));
    }
}

function toJSON(json) {
    return JSON.stringify(json);
}

function fromJSON(json) {
    const arr = JSON.parse(json);
}

function renderTasks() {
    [todo, inprogress, done].forEach(c => {
        while(c.children.length > 1) {
            c.removeChild(c.lastChild);
        }
    });

    tasks.forEach(t => {
        const taskDiv = document.createElement('div');
        taskDiv.classList.add('card');
        taskDiv.draggable = true;
        taskDiv.textContent = t.text;

        if(t.status == 'todo') {
            todo.appendChild(taskDiv);
        } else if (t.status == 'inprogress') {
            inprogress.appendChild(taskDiv);
        } else if ( t.status == 'done') {
            done.appendChild(taskDiv);
        }
    });
 
}


/* for (list of cards){

    list.addEventListener("dragstart",function(e){
        let selected = e.target;

        inprogress.addEventListener("dragover",function(e){
            e.preventDefault();
        });
        inprogress.addEventListener("drop", function(e){
            inprogress.appendChild(selected);
            selected = null;                       
        })
        todo.addEventListener("dragover",function(e){
            e.preventDefault();
        });
        todo.addEventListener("drop", function(e){
            todo.appendChild(selected);
            selected = null;                       
        })
        done.addEventListener("dragover",function(e){
            e.preventDefault();
        });
        done.addEventListener("drop", function(e){
            done.appendChild(selected);
            selected = null;                       
        })
    })       
}  */

    
// Add dragstart listener to each card
    cards.forEach(card => {
        card.addEventListener("dragstart", function(e) {
            selected = e.target;
        });
    });

    // Common dragover handler
    function handleDragOver(e) {
        e.preventDefault();
    }

    // Common drop handler
    function handleDrop(e) {
        e.preventDefault();
        if (selected) {
            e.target.appendChild(selected);
            selected = null;
        }
    }

    // Add listeners to drop zones
    
// Set up dragover and drop on each dropzone
    dropzones.forEach(zone => {
        zone.addEventListener("dragover", function (e) {
        e.preventDefault(); // Necessary to allow dropping
        });

        zone.addEventListener("drop", function (e) {
        e.preventDefault();
        if (selected) {
            zone.appendChild(selected);
            selected = null;
        }
    });
});

    const addTaskButton = document.getElementById('addTask');

    addTaskButton.addEventListener('click', () => {
    const input = document.getElementById('inputTask');

    const t = new Task(Date.now(), input.value, 'todo');
    tasks.push(t);
        
    input.value = '';

    localStorage.setItem('tasks', toJSON(tasks));
    renderTasks();


});

loadTasks();
renderTasks();
