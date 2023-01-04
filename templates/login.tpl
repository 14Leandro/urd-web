{include file="header.tpl"}

<section class="cont-form-admin">
        <div class="banner-presentacion">
            <h2>Login de <span>administrador</span></h2>
        </div>

    <div class="cont-form">
        <form method="POST" action="validate" class="form bg-light">
            <div class="form-group">
                <label for="">Usuario</label>
                <input type="text" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Enter email">
            </div>
            <div class="form-group">
                <label for="">Password</label>
                <input type="password" required class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
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
