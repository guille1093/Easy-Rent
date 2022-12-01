const dropArea = document.querySelector(".drop-area");
const dragText = dropArea.querySelector("h2");
const button = dropArea.querySelector("button");
const input = dropArea.querySelector("#input-file");
let files;

button.addEventListener("click", (e) => {
    input.click();
});

input.addEventListener("change", (e) => {
    files = input.files;
    dropArea.classList.add("active");
    showFiles(files);
    dropArea.classList.remove("active");
});

function showFiles(files) {
    // borrar las imagenes anteriores
    document.querySelector("#preview").innerHTML = "";
    if(files.length === undefined) {
        processFile(files);
    }else{
        for(const file of files) {
            processFile(file);
            // añadir los archivos arrastrados al input file
            input.files = files;
        }
        console.log(files.length);
    }
}


dropArea.addEventListener("dragover", (e) => {
    e.preventDefault();
    dropArea.classList.add("active");
    dragText.textContent = "Suelta para subir los archivos";
});

dropArea.addEventListener("dragleave", (e) => {
    e.preventDefault();
    dropArea.classList.remove("active");
    dragText.textContent = "Arrastra y suelta imágenes";
});

dropArea.addEventListener("drop", (e) => {
    e.preventDefault();
    files = e.dataTransfer.files;
    showFiles(files);
    dropArea.classList.remove("active");
    dragText.textContent = "Arrastra y suelta imágenes";
});


function processFile(file) {
    const docType = file.type;
    const validExtensions = ["image/jpeg", "image/jpg", "image/png", "image/gif", "image/webp"];
    
    if(validExtensions.includes(docType)) {
        // archivo valido
        const fileReader = new FileReader();
        const id = `file-${Math.random().toString(32).substring(7)}`;

        fileReader.addEventListener('load', e => {
            const fileUrl = fileReader.result;
            const image = `
                <div id="${id}" class="file-container">
                    <img src="${fileUrl}" alt="${file.name}" width="50px">
                    <div class="status">
                        <span>${file.name}</span>
                        <span class="text-right"><b>${file.size > 1000000 ? (file.size / 1000000).toFixed(2) + "MB" : (file.size / 1000).toFixed(2) + "KB"}</b> </span>
                    </div>
                </div>
            `;
            const html = document.querySelector("#preview").innerHTML;
            document.querySelector("#preview").innerHTML = image + html;
        });

        fileReader.readAsDataURL(file);
        // uploadFile(file, id);
        
        

    }else{
        alert("Este tipo de archivo no es válido");
        
    }
}

// function uploadFile(file, id) {
//     // agregar cada uno de los file al input
//     input.a

// }

