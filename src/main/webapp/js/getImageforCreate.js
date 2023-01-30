let loadFile = function(event) {
    let file = document.getElementById('file');
    let image = document.getElementById('image');
    image.style.display = 'none';
    image.value = '';
    if (file != null){
        image.src = URL.createObjectURL(event.target.files[0]);
        image.style.display = 'block';
    }
};