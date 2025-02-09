<div id="topbar" class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="<?php print_link(HOME_PAGE) ?>">
            <img class="img-responsive" src="<?php print_link(SITE_LOGO); ?>" /> <?php echo SITE_NAME ?>
            </a>
            <?php 
            if(user_login_status() == true ){ 
            ?>
            <button type="button" id="sidebarCollapse" class="btn btn-dark">
                <span class="navbar-toggler-icon"></span>
            </button>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                            <span class="avatar-icon"><i class="fa fa-user"></i></span> 
                            <span>Hi <?php echo ucwords(USER_NAME); ?> !</span>
                        </a>
                        <ul class="dropdown-menu">
                            <a class="dropdown-item" href="<?php print_link('account') ?>"><i class="fa fa-user"></i> My Account</a>
                            <a class="dropdown-item" href="<?php print_link('index/logout?csrf_token=' . Csrf::$token) ?>"><i class="fa fa-sign-out"></i> Logout</a>
                        </ul>
                    </li>
                </ul>
            </div>
            <?php 
            } 
            ?>
        </div>
    </div>
    <?php 
    if(user_login_status() == true ){ 
    ?>
    <nav id="sidebar" class="navbar-dark bg-dark">
        <ul class="nav navbar-nav w-100 flex-column align-self-start">
            <li class="menu-profile text-center nav-item">
                <a class="avatar" href="<?php print_link('account') ?>">
                    <span class="avatar-icon"><i class="fa fa-user"></i></span>
                </a>
                <h5 class="user-name">Hi 
                    <?php echo ucwords(USER_NAME); ?>
                    <small class="text-muted"><?php echo ACL::$user_role; ?> </small>
                </h5>
                <div class="dropdown menu-dropdown">
                    <button class="btn btn-primary dropdown-toggle btn-sm" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-user"></i>
                    </button>
                    <ul class="dropdown-menu">
                        <a class="dropdown-item" href="<?php print_link('account') ?>"><i class="fa fa-user"></i> My Account</a>
                        <a class="dropdown-item" href="<?php print_link('index/logout?csrf_token=' . Csrf::$token) ?>"><i class="fa fa-sign-out"></i> Logout</a>
                    </ul>
                </div>
            </li>
        </ul>
        <?php Html :: render_menu(Menu :: $navbarsideleft  , "nav navbar-nav w-100 flex-column align-self-start"  , "accordion"); ?>
    </nav>
    <?php 
    } 
    ?>