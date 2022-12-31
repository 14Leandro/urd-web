{include file="headerAdmin.tpl"}

<section class="cont-admin">
        <div class="banner-presentacion">
            <h2>Redacción de <span>Noticias</span></h2>
        </div>   

    <section class="main-admin-noticias">
        <!-- Div formulario -->
        <div class="cont-datos-noticias">
            <form class="form-edicion-noticia" method="POST" enctype = "multipart/form-data">
                <div class="form-izq">
                    <input class="titulo-not" type="text" required name="txtTitulo" id="txtTitulo" placeholder="Ingrese título" value="">
                    <input class="categoria-not" type="text" required name="txtCategoria" id="txtCategoria" placeholder="Ingrese categoria" value="">
                    <textarea class="descripcion-not" type="text" name="txtDescripcion" id="txtDescripcion" placeholder="Ingrese descripción" value=""></textarea>
                    <!--<input type="text" required readonly name="txtID" id="txtID" placeholder="ID" value="">-->
                </div>
                <div class="form-der">
                    <input class="fecha-not" type="date" required name="txtFecha" id="txtFecha" value="">

                    <input class="selec-img-not" type="file" name="txtImagen" id="txtImagen">

                    <div class="botonera-edicion-not">
                        <button class="btnagregar" type="submit" name="accion" value="Agregar">Agregar</button>
                        <button class="btnmodificar" type="submit" name="accion" value="Modificar">Modificar</button>
                        <button class="btncancelar" type="submit" name="accion" value="Cancelar">Cancelar</button>
                    </div>
                </div>

            </form>
        </div>
        <!-- Div tabla con lo de db -->
        <div class="cont-noticias-cargadas">
            <h2>Noticias cargadas</h2>
            <table class="table">
                <thead>
                    <tr class="table-titulos-celdas">
                        <th>ID</th>
                        <th>Categoria</th>
                        <th>Titulo</th>
                        <th>Fecha</th>
                        <th>Imagen</th>
                        <th>Descripcion</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($listaNoticias as $noticia){ ?>
                    <tr>
                        <td class="table-id"></td>
                        <td class="table-categoria"></td>
                        <td class="table-titulo"></td>
                        <td class="table-fecha"></td>


                        <td class="table-imagen">
                            <img src=""  width="50px" alt="">
                        </td>
                        
                        
                        
                        <td class="table-descripcion"><?php echo $noticia['descripcion'] ?></td>

                        <td class="table-botonera">
                            
                            <form method="POST">

                                <input class="table-btnseleccionar" type="submit" name="accion" value="Seleccionar">
                                
                                <input class="table-btnborrar" type="submit" name="accion" value="Borrar">

                                <input type="hidden" name="txtID" id="txtID" value="">

                            </form>
                        </td>

                    </tr>
                </tbody>
            </table>
        </div>
    </section>

</section>

{include file="footer.tpl"}
