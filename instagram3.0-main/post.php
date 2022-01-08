<!DOCTYPE html>
<html lang="en">
  <head>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;600&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/login.style.css" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=, initial-scale=1.0" />
    <title>Instagräm</title>
  </head>
  <body>

  
    <nav class="navbar">
      <div class="nav-wrapper" class="dropdown">
        <a href="index.php"><img src="img/instagram-logga.png" class="insta-img" alt="" /></a>
        <input type="text" class="search" placeholder="Sök" />
        <div class="navigering-items">

          <div class="ikon">
            <i class="fas fa-home"></i>
          </div>
          <div class="ikon">
            <a class="utan" href="post.php"><i class="far fa-plus-square"></i></a>
          </div>
          <div class="ikon">
            <i class="far fa-paper-plane"></i>
          </div>
          <div class="ikon">
            <i class="far fa-compass"></i>
          </div>
          <div class="ikon">
            <i class="far fa-heart"></i>
          </div>
          
          
          <div class="dropdown">
            <div class="dropbtn"><i class="fas fa-user-circle"></i></div>
            <div class="dropdown-content">
              <a class="storlek" href="#"><div class="ikon "><i class="fas fa-user-circle"></i></div>Profil</a>
              <a class="storlek" href="#"><div class="ikon "><i class="far fa-bookmark"></i></div>Spara</a>
              <a class="storlek" href="#"><div class="ikon "><i class="fas fa-user-circle"></i></div>Inställningar</a>
              <a class="storlek" href="#"><div class="ikon "><i class="fas fa-user-circle"></i></div>Byt konto</a>
              <a class="storlek linje" href="#"><div class="ikon"><i class="fas fa-user-circle"></i></div>Logga ut</a>
            </div>
          </div>
        </div>
      </div>
    </nav>

    

    <div class="posta-bild">
        <h3 class="text-post">Skapa post</h3>
        <img class="bild-dummy" src="img/dummy-image-square.jpg" alt="">
        <button class="btn-post">Välj bild på datorn</button>
    </div>

   
    <script src="script.js"></script>
  </body>
</html>
