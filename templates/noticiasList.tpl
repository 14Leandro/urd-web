{include file="header.tpl"}
<section>
    <div class="banner-presentacion">
        <h2>Últimas <span>Noticias</span></h2>
    </div>

    <div class="cont-noticias">
        <div class="noticias">

                   {foreach from=$noticias item=$noticia}

                   <div class="card mb-3" style="max-width: 70%;">
                     <div class="row g-0">
                        <div class="col-md-4">
                            <img src="img/liga1.jpg" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">{$noticia->titulo}</h5>
                            <p class="card-text">{$noticia->descripcion}</p>
                            <p class="card-text"><small class="text-muted">{$noticia->fecha}</small></p>
                            <a class="btn">Ver +</a>
                        </div>
                        </div>
                     </div>
                    </div>
                    {/foreach}
        </div>
    </div>
</section>

{include file="banner-mas.tpl"}

{include file="footer.tpl"}
