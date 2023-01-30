let total = document.getElementById('totalpage');
let pagination = '<li class="page-item"><a class="page-link" href="#">Previous</a></li>'
for(let i = 0 ; i < total; i++){
    pagination += '<li class="page-item"><a class="page-link" href='+(i)+'"/ ">' + (i+1) + '</a></li>'
}
pagination += '<li class="page-item"><a class="page-link" href="#">Next</a></li>'
document.getElementById('pagination').innerHTML = pagination