<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- LINKS -->
    <!-- Fontes -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
                
    <!-- Bootstrap e CSS -->
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <title>Teste</title>
</head>
<body>

    <!-- Inicio NavBar-->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <!-- Navbar content on the left -->
            <a class="navbar-brand" href="#">
                <img src="images/logo3.png" width="45" height="48" alt="Logo">
            </a>
            <a class="navbar-brand text-light" href="#">Etec Bebedouro</a>
            
            <!-- Navbar toggler button for mobile view -->
            <button class="text-light navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="text-light navbar-toggler-icon"></span>
            </button>
            
            <!-- Navbar links and dropdown -->
            <div class="text-light collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="text-light nav-link active me-2" aria-current="page" href="#im">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="text-light nav-link me-2" href="#eq">Equipe</a>
                    </li>
                    <li class="nav-item">
                        <a class="text-light nav-link me-2" href="#sb">Sobre</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="text-light nav-link dropdown-toggle me-2" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            CURSOS
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Administração - Novotec integrado</a></li>
                            <li><a class="dropdown-item" href="#">Informática p/ Internet - Novotec integrado</a></li>
                            <li><a class="dropdown-item" href="#">Recursos Humanos - Novotec integrado</a></li>
                            <li><a class="dropdown-item" href="#">Marketing - Novotec integrado</a></li>
                            <li><a class="dropdown-item" href="#">Serviços Jurídicos - Novotec integrado</a></li>
                        </ul>
                    </li>
                </ul>
                
                <!-- Logo aligned to the right -->
                <a href="#" class="ms-auto">
                    <img src="images/login.png" width="45" height="48" alt="Logo">
                </a>
            </div>
        </div>
    </nav>
    <!-- Fim NavBar-->

    <!-- Inicio Imagem -->
    <div class="container1" id="im">
        <img class="imagem1" src="Images/banner.png" alt="Frente da Etec">
    </div>
    <!-- Fim Imagem -->

    <!-- Inicio Equipe -->
    <div class="container mt-5" id="eq">
        <p class="text-center mb-4 equipe-titulo">EQUIPE</p>
        <div class="row">
            <div class="col-md-3 mb-4">
                <div class="card" style="width: 100%;">
                    <img src="Images/imagem.jpg" class="card-img-top" alt="Imagem do Card 1">
                    <div class="card-body">
                        <h5 class="card-title">Renan Moraes</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card" style="width: 100%;">
                    <img src="Images/imagem.jpg" class="card-img-top" alt="Imagem do Card 2">
                    <div class="card-body">
                        <h5 class="card-title">Julia Sorrente</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card" style="width: 100%;">
                    <img src="Images/imagem.jpg" class="card-img-top" alt="Imagem do Card 3">
                    <div class="card-body">
                        <h5 class="card-title">Marcos Alexandre</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card" style="width: 100%;">
                    <img src="Images/imagem.jpg" class="card-img-top" alt="Imagem do Card 4">
                    <div class="card-body">
                        <h5 class="card-title">Letycia Conde</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Fim Equipe -->

    <!-- Inicio Sobre -->
    <p class="text-center mb-4 equipe-titulo" id="sb">SOBRE O PROJETO</p>
    <!-- Fim Sobre -->

    <!-- Fim Footer -->
    <footer class="bg-body-tertiary text-center text-lg-start">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
            © 2024 Integra Etec:
            <a class="text-body" href="https://etecbebedouro.com.br">etecbebedouro.com.br</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Fim Footer -->

</body>
</html>
