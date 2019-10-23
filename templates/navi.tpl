<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">{$navi_title|default:'Top'}</a>
  <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#Navber" aria-controls="Navber" aria-expanded="false" aria-label="ナビゲーションの切替">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="Navber">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">ホーム <span class="sr-only">(現位置)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">リンク</a>
      </li>
      <li class="nav-item dropdown" style="width:300px;">
        <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          メニュー
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">メニュー1</a>
          <a class="dropdown-item" href="index.php">Top</a>
          <a class="dropdown-item" href="login.php">ログイン</a>
          <a class="dropdown-item" href="menu.php">メニュー</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">その他</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">無効</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input type="search" class="form-control mr-sm-2" placeholder="検索..." aria-label="検索...">
      <button type="submit" class="btn btn-outline-success my-2 my-sm-0">検索</button>
    </form>
  </div><!-- /.navbar-collapse -->
</nav>