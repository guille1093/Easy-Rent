<div class="col-lg-7">
                <div class="card bg-secondary shadow border-0">
                    <div class="card-body px-lg-5 py-lg-5">
                        <div class="text-center text-muted mb-4">
                            <small>Registre su propiedad</small>
                        </div>
                        <form role="form" action="registrarPropiedad" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="nombre">Nombre de la propiedad*</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre de la propiedad" required>
                            </div>
                            <div class="form-group">
                                <label for="descripcion">Descripción*</label>
                                <textarea class="form-control" id="descripcion" name="descripcion" rows="3" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="direccion">Dirección*</label>
                                <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección" required>
                            </div>
                            <div class="form-group">
                                <label for="precio">Precio*</label>
                                <input type="number" class="form-control" id="precio" name="precio" placeholder="Precio" required>
                            </div>
                            <div class="form-group">
                                <label for="tipo">Tipo de propiedad*</label>
                                <select class="form-control" id="tipo" name="tipo" required>
                                    <option value="Casa">Casa</option>
                                    <option value="Departamento">Departamento</option>
                                    <option value="Local">Local</option>
                                    <option value="Oficina">Oficina</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="estado">Estado*</label>
                                <select class="form-control" id="estado" name="estado" required>
                                    <option value="Alquiler">Alquiler</option>
                                    <option value="Venta">Venta</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="imagen">Imagen*</label>
                                <input type="file" class="form-control-file" id="imagen" name="imagen" required>
                            </div>
            </div>