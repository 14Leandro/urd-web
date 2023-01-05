    <section class="noticias-index">
        <div class="titulo">Últimas <span>noticias</span></div>

            <div class="cont-noticias-index">
                <div class="card mb-3 col-md-6">
                <img src="img/estadio1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Cronograma de la fecha</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <a class="btn" href="#" role="button">Ver +</a>
                </div>
                </div>
            
            {* {foreach from=$noticias item=$noticia} *}
                
            <div class="col-md-6 cont-noticias-horizontal">
                <div class="card mb-3 noticia-horizontal" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                    <img src="img/estadio2.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Resultados de la fecha</h5>
                        <p class="card-text">Acá, los resultados de la fecha</p>
                        <a class="btn" href="#" role="button">Ver +</a>
                    </div>
                    </div>
                </div>
                </div>
            
                <div class="card mb-3 noticia-horizontal" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                    <img src="img/estadio2.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Resultados de la fecha</h5>
                        <p class="card-text">Acá, los resultados de la fecha</p>
                        <a class="btn" href="#" role="button">Ver +</a>
                    </div>
                    </div>
                </div>
                </div>
                <div class="card mb-3 noticia-horizontal" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                    <img src="img/estadio2.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Resultados de la fecha</h5>
                        <p class="card-text">Acá, los resultados de la fecha</p>
                        <a class="btn" href="#" role="button">Ver +</a>
                    </div>
                    </div>
                </div>
                </div>
                
            </div>
            </div>            
        {* {/foreach} *}
        </div>
        </div>
    </section>