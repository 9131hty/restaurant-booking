document.addEventListener("DOMContentLoaded", () => {
    fetch("../template/footer.html")
        .then(response => response.text())
        .then(data => {
            const tempDiv = document.createElement("div");
            tempDiv.innerHTML = data;

            const template = tempDiv.querySelector("#footer-template");
            if (template) {
                const clone = template.content.cloneNode(true);
                document.body.append(clone);
            }
        })
        .catch(err => console.error("Error loading footer:", err));
});