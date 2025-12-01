
const save_button = document.getElementById("save_button");

// document.addEventListener("DOMContentLoaded", () => {

    const itemId = save_button.getAttribute("href").split("/").pop();

    // detect if it's saved
    fetch(`/is_saved/${itemId}`)
        .then(response => response.json())
        .then(data => {

            save(data.saved);

        });

    // save item
    save_button.addEventListener("click", (e) => {
        e.preventDefault();

        fetch(save_button.href)
            .then(response => response.json())
            .then(data => {

                save(data.saved);

            });
    });
// });


function save(save_data){
    if (save_data){
        save_button.textContent = "Saved";
    } else {
        save_button.textContent = "Save this item";
    }
}
