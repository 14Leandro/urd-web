{include file="header.tpl"}

<section class="cont-form-admin">
        <div class="banner-presentacion">
            <h2>Login de <span>administrador</span></h2>
        </div>

    <div class="cont-form">
        <form action="validate" method="POST" class="form bg-light">
            <div class="form-group">
                <label for="">Usuario</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email">
            </div>
            <div class="form-group">
                <label for="">Password</label>
                <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
            </div>

            {if $error} 
                <div class="alert alert-danger mt-3">
                    {$error}
                </div>
            {/if}
            
            <button type="submit" class="btn">Ingresar</button>
        </form>
    </div>
</section>


{include file="footer.tpl"}
