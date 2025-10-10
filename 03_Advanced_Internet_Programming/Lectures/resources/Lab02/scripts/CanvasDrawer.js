/**
 * CanvasDrawer class provides basic drawing functionality on a HTML5 canvas element.
 * It allows users to draw black lines by clicking and dragging the mouse over the canvas.
 * 
 * @example
 * const canvas = document.getElementById('myCanvas');
 * const drawer = new CanvasDrawer(canvas);
 * // Users can now draw on the canvas by dragging the mouse
 */
export class CanvasDrawer {
    /**
     * Constructor initializes the canvas, context, and drawing state.
     * Sets up mouse event listeners for drawing.
     * 
     * @param {HTMLCanvasElement} canvasElement - The canvas element to draw on.
     */
    constructor(canvasElement) {
        // Store reference to the canvas element
        this.canvas = canvasElement;
        
        // Get the 2D rendering context for drawing operations
        this.ctx = this.canvas.getContext('2d');
        
        // Flag to track if the user is currently drawing
        this.isDrawing = false;
        
        // Variables to store the last mouse position for continuous line drawing
        this.lastX = 0;
        this.lastY = 0;

        /**
         * Helper method to get the mouse position relative to the canvas.
         * 
         * @private
         * @param {MouseEvent} e - The mouse event.
         * @returns {Object} Object with x and y coordinates.
         */
        this.getMousePos = (e) => {
            return { x: e.offsetX, y: e.offsetY };
        };

        // Event listener for mouse down: starts the drawing process
        /**
         * @private
         */
        this.canvas.addEventListener('mousedown', (e) => {
            this.isDrawing = true;
            const pos = this.getMousePos(e);
            this.lastX = pos.x;
            this.lastY = pos.y;
        });

        // Event listener for mouse move: draws a line segment if drawing is active
        /**
         * @private
         */
        this.canvas.addEventListener('mousemove', (e) => {
            if (this.isDrawing) {
                const pos = this.getMousePos(e);
                // Set drawing properties: black color, 2px line width
                this.ctx.strokeStyle = 'black';
                this.ctx.lineWidth = 2;
                // Begin a new path for the line segment
                this.ctx.beginPath();
                // Move to the last known position
                this.ctx.moveTo(this.lastX, this.lastY);
                // Draw line to the current position
                this.ctx.lineTo(pos.x, pos.y);
                // Render the line on the canvas
                this.ctx.stroke();
                // Update last position for the next segment
                this.lastX = pos.x;
                this.lastY = pos.y;
            }
        });

        // Event listener for mouse up: stops the drawing process
        /**
         * @private
         */
        this.canvas.addEventListener('mouseup', () => {
            this.isDrawing = false;
        });

        // Event listener for mouse leave: stops drawing if mouse exits the canvas
        /**
         * @private
         */
        this.canvas.addEventListener('mouseleave', () => {
            this.isDrawing = false;
        });
    }
}