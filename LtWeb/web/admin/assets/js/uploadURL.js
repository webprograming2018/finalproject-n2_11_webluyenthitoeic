function previewFile() {
    var preview = document.querySelector('audio');
    var file    = document.querySelector('input[type=file]').files[0];
    var reader  = new FileReader();
    reader.addEventListener("load", function () {
	preview.src = reader.result;
    }, false);
    if (file) {
        reader.readAsDataURL(file);
    }
}