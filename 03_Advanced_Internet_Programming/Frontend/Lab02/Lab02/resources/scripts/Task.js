export class Task {
    constructor(id, text, status, location = null) {
        this.id = id;
        this.text = text;
        this.status = status;
        this.location = location;
    }

    print() {
        console.log('Text: '+this.text)
    }
}


// function Task(Id, text, status, location){

//     let p = document.createElement ('p');
//     p.innerHTML = Id, text, status, location;
    
// }