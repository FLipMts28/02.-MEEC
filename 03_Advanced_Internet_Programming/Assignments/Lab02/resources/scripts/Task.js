export class Task {
    constructor(id, text, status, location = null) {
        this.id = id;
        this.text = text;
        this.status = status;
        this.location = location;
    }

    print() {
        console.log('ID: '+this.id);
        console.log('Text: '+this.text);
        console.log('Status: '+this.status);
        console.log('Location: '+this.location);

    }
}
/* 
export function saveTasks(arr = []) {
    const saved = localStorage.setItem('tasks', toJSON(arr));
}
 */


export function renderTasks() {
    [todo, inprogress, done].forEach(c => {
        while(c.children.length > 1) {
            c.removeChild(c.lastChild);
        }
    });
    
    Task.forEach(t => {
        const taskDiv = document.createElement('div');
        taskDiv.classList.add('card');
        taskDiv.draggable = true;
        taskDiv.textContent = t.text;

        if(t.status === 'todo') {
            todo.appendChild(taskDiv);
        } else if (t.status == 'inprogress') {
            inprogress.appendChild(taskDiv);
        } else if ( t.status == 'done') {
            done.appendChild(taskDiv);
        }
    });
}