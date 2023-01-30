const card = document.querySelector('#card');
const btnOpen = document.querySelector('#btn-open');
const form = document.querySelector('#card-form');
const cardEmail = document.querySelector('#card .email');
const cardName = document.querySelector('#card .fullname');
const brandLogo = document.querySelector('#brand-logo');
const signature = document.querySelector('#card .signature p');
const cardNumber = document.querySelector('#card .number');
const cardAddress = document.querySelector('#card .address');
const password = document.querySelector('#card .password')

/* voltear tarjeta para el frente */
const showFront = () => {
    if(card.classList.contains('active')){
        card.classList.remove('active')
    }
};

/*evento de la tarjeta*/
card.addEventListener('click', () => {
    card.classList.toggle('active');
})

/*evento del boton*/
btnOpen.addEventListener('click', () => {
    btnOpen.classList.toggle('active');
    form.classList.toggle('active');
})

/* validacion input numero con expresiones regulares  */
form.email.addEventListener('keyup', (e) => {

    let valueInput = e.target.value;

    form.email.value = valueInput
    .trim();

    cardEmail.textContent = valueInput;

    if(valueInput == ''){
        cardEmail.textContent = '####@gmail';
    }

    showFront();
});

/* validacion input nombre con expresiones regulares  */
form.userName.addEventListener('keyup', (e) => {

    let valueInput = e.target.value;

    form.userName.value = valueInput
    /* eliminar numeros */
    .replace(/[0-9]/g, '')

    cardName.textContent = valueInput;

    if(valueInput == ''){
        cardName.textContent = 'Trương Xuân Duy';
    }
    let str = valueInput.normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .replace(/đ/g, 'd').replace(/Đ/g, 'D');
console.log(str);
    signature.textContent = str;

    /* voltear tarjeta para el frente */
    showFront();

});


/* validacion input mes de expiracion  */
form.phoneNumber.addEventListener('keyup', (e) => {

    let valueInput = e.target.value;
    form.phoneNumber.value = valueInput
    .replace(/\s/g, '')
    .replace(/\D/g, '')
    .replace(/[a-z]/g, '')
    .replace(/([0-9].{3})/g, '$1 ' )
    .trim();
    
    cardNumber.textContent = valueInput;
    if(valueInput == ''){
        cardNumber.textContent = '0935 6070 53';
    }
    
    /* voltear tarjeta para el frente */
    showFront();
});

/* validacion input mes de expiracion  */
form.address.addEventListener('keyup', (e) => {

    let valueInput = e.target.value;
    
    cardAddress.textContent = valueInput;
    
    if(valueInput == ''){
        cardAddress.textContent = '242 Bế Văn Đàn, Thanh Khê, Đà Nẵng';
    }
    
    /* voltear tarjeta para el frente */
    showFront();
});


/* validacion input CVV*/

form.password.addEventListener('keyup', (e) => {
    let valueInput = e.target.value;
    form.password.value = valueInput.trim();

    if(!card.classList.contains('active')){
        card.classList.toggle('active');
    }

    password.textContent = form.password.value;
});


const togglePassword = document.querySelector("#showpassword");
const passwordinput = document.querySelector("#password");

        togglePassword.addEventListener("click", function () {
            // toggle the type attribute
            const type = passwordinput.getAttribute("type") === "password" ? "text" : "password";
            passwordinput.setAttribute("type", type);
            
            // toggle the icon
            this.classList.toggle("bi-eye");
        });

let loadFile = function(event) {
    let file = document.getElementById('avatar');
    let image = document.getElementById('avatarUser');
    image.src = "/img/images.png"
    image.value = '';
    if (file != null){
        image.src = URL.createObjectURL(event.target.files[0]);
        
    }
};