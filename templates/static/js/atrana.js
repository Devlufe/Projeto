"use strict";
// Função para alternar o modo noturno
function toggleDarkMode() {
    document.body.classList.toggle('dark-mode');
    const icon = document.getElementById('dark-mode-icon');

    // Alterar o ícone dependendo do modo
    if (document.body.classList.contains('dark-mode')) {
        icon.classList.remove('fa-moon');
        icon.classList.add('fa-sun');
        localStorage.setItem('dark-mode', 'enabled');
    } else {
        icon.classList.remove('fa-sun');
        icon.classList.add('fa-moon');
        localStorage.setItem('dark-mode', 'disabled');
    }
}

// Verificar a configuração de modo noturno armazenada no localStorage
document.addEventListener('DOMContentLoaded', function() {
    const icon = document.getElementById('dark-mode-icon');
    if (localStorage.getItem('dark-mode') === 'enabled') {
        document.body.classList.add('dark-mode');
        icon.classList.remove('fa-moon');
        icon.classList.add('fa-sun');
    } else {
        icon.classList.remove('fa-sun');
        icon.classList.add('fa-moon');
    }
});

// Adicionar um ouvinte de evento ao botão de alternância
document.getElementById('toggle-dark-mode').addEventListener('click', toggleDarkMode);
