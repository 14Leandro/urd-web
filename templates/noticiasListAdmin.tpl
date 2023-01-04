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
                    <input class="titulo-not" type="text" required name="titulo" id="titulo" placeholder="Ingrese título">

                    <input class="categoria-not" type="text" required name="categoria" id="categoria" placeholder="Ingrese categoria">

                    <textarea class="descripcion-not" type="text" name="descripcion" id="descripcion" placeholder="Ingrese descripción"></textarea>

                </div>

                <div class="form-der">
                    <input class="fecha-not" type="date" required name="fecha" id="fecha">

                    <input class="selec-img-not" type="file" name="imagen" id="imageToUpload">

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
                    {foreach from=$noticias item=$noticia}
                        
                    <tr>
                        <td class="table-id text-light">{$noticia->id}</td>
                        <td class="table-categoria text-light">{$noticia->categoria}</td>
                        <td class="table-titulo text-light">{$noticia->titulo}</td>
                        <td class="table-fecha text-light">{$noticia->fecha}</td>
                        <td class="table-imagen">
                            <img src="imagenesDb/{$noticia->imagen}"  width="50px" alt="{$noticia->imagen}">
                        </td>
                        <td class="table-descripcion text-light">{$noticia->descripcion}</td>
                        <td class="table-botonera">

                            <a href='formModificar/{$noticia->id}' type="button" class="btn btn-success">Seleccionar</a>

                            <a href='borrar/{$noticia->id}' type='button' class='btn btn-danger'>Borrar</a>

                        </td>
                    </tr>
                {/foreach}
                </tbody>
            </table>
        </div>
        
    </section>
    <p class="mx-4 text-light"><small>Mostrando {$count} noticias</small></p>
</section>

{include file="footer.tpl"}
