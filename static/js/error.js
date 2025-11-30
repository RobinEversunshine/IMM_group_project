
const form = document.forms[0];

form.addEventListener("submit", (e)=>{
    // prevent refresh
    e.preventDefault();
    
    //get form data
    const formData = new FormData(e.target);

    // Convert to JSON
    const data = Object.fromEntries(formData.entries());

    // get feedback from app.py
    fetch(form.action, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json' 
        },
        body: JSON.stringify(data)
    })
    .then(response => response.json())
    .then(result => {
        console.log(result);

        if (result.success){
            window.location.href = "/";
        } else {
            document.getElementById("error").textContent = result.msg;
        }

    });
})