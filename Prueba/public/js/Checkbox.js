

// validacion que este selecionado mas de 2 y maximo de 2 

document.addEventListener('DOMContentLoaded', function() {
    var checkboxes = document.querySelectorAll('input[type=checkbox]');
    var limit = 2;

    checkboxes.forEach(function(checkbox) {
        checkbox.addEventListener('change', function() {
            var checked = document.querySelectorAll('input[type=checkbox]:checked');
            if (checked.length > limit) {
                this.checked = false;
            }
        });
    });
});
