document.addEventListener("DOMContentLoaded", () => {
    fetch("../template/header.html")
        .then(response => response.text())
        .then(data => {
            const tempDiv = document.createElement("div");
            tempDiv.innerHTML = data;

            const template = tempDiv.querySelector("#header-template");
            if (template) {
                const clone = template.content.cloneNode(true);
                document.body.prepend(clone);
            }
        })
        .catch(err => console.error("Error loading header:", err));
});
