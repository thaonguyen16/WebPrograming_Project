// Hide element add - update - category
const show_category = document.getElementById('show_status_category');
const show_add_category = document.getElementById('show_add_category')
const btn_add = document.getElementById('add_product');
const btn_cancel = document.getElementById('btn_cancel');

btn_add.addEventListener('click', function handleClick()
{
    if (show_category.style.display === 'none')
    {
        show_category.style.display = 'block';
        show_add_category.style.display='none';

    }
    else
    {
        show_category.style.display = 'none';
        btn_add.style.display = 'none';
        show_add_category.style.display='block';
    }
});

btn_cancel.addEventListener('click' , function handleClick() {
    show_category.style.display='block';
    show_add_category.style.display='none';
});

// -----------------------------------------------------------------------------------------------
// Hide element add - update - product
const show_product = document.getElementById('show_product');
const show_add_product = document.getElementById('show_add_product')
const btn_add_product = document.getElementById('btn_add_product');
const btn_cancel_product = document.getElementById('btn_cancel_product');

btn_add_product.addEventListener('click', function handleClick()
{
    if (show_product.style.display === 'none')
    {
        show_product.style.display = 'block';
        show_add_product.style.display='none';

    }
    else
    {
        show_product.style.display = 'none';
        btn_add_product.style.display = 'none';
        show_add_product.style.display='block';
    }
});

btn_cancel_product.addEventListener('click' , function handleClick() {
    show_product.style.display='block';
    show_add_product.style.display='none';
});
