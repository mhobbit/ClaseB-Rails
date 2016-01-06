// Set default options
JSONEditor.defaults.options.theme = 'bootstrap2';

// Initialize the editor
var editor = new JSONEditor(document.getElementById("editor_holder"),{
  schema: {
      type: "object",
      properties: {
          name: { "type": "string" }
      }
  }
});