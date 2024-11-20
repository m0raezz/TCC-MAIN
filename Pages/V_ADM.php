<?php

    session_start();
    if((!isset($_SESSION['CodigoADM']) == true) && (!isset($_SESSION[ 'SenhaADM']) == true))
    {
        
        unset($_SESSION['CodigoADM']);
        unset($_SESSION['SenhaADM']);
        header('Location:login.php');
    }

    $logado = $_SESSION['CodigoADM'];

?>


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
    <link rel="stylesheet" href="../style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <title>Integra Etec</title>
    <link rel="icon" type="image/x-icon" href="..\Images\logo1.png">
</head>
<body>
    <!--V Libras-->
    <div vw class="enabled">
        <div vw-access-button class="active"></div>
        <div vw-plugin-wrapper>
        <div class="vw-plugin-top-wrapper"></div>
    </div>
    </div>
    <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
    
    <script>
        new window.VLibras.Widget('https://vlibras.gov.br/app');
    </script>

    <!-- Start NavBar-->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <!-- Navbar icon left -->
            <a class="navbar-brand" href="V_ADM.php">
                <img src="../images/logo3.png" width="45" height="45" alt="Logo">
            </a>
            <a class="navbar-brand text-light" href="V_ADM.php">Etec Bebedouro</a>
            
            <!-- Navbar for mobile view -->
            <button class="text-light navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="text-light navbar-toggler-icon"></span>
            </button>
            
            <!-- Navbar dropdown -->
            <div class="text-light collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="text-light nav-link active me-2" aria-current="page" href="V_ADM.php #im">INICIO</a>
                    </li>
                    <li class="nav-item">
                        <a class="text-light nav-link me-2" href="V_ADM.php #eq">EQUIPE</a>
                    </li>
                    <li class="nav-item">
                        <a class="text-light nav-link me-2" href="V_ADM.php #sb">SOBRE</a>
                    </li>



                    <li class="nav-item dropdown">
                        <a class="text-light nav-link dropdown-toggle me-2" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            AVALIAÇÕES
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="2.1_ADM.php">ADM</a></li>
                            <li><a class="dropdown-item" href="1.1_INFO.php">INFO</a></li>
                            <li><a class="dropdown-item" href="4.1_RH.php">RH</a></li>
                            <li><a class="dropdown-item" href="3.1_MKT.php">MKT</a></li>
                            <li><a class="dropdown-item" href="5.1_SJ.php">SJ</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="text-light nav-link me-2" href="ADM_CMTAP.php">| APROVADAS</a>
                    </li>

                    <li class="nav-item">
                        <a class="text-light nav-link me-2" href="ADM_CMT.php">| ENCAMINHADAS & REPROVADAS </a>
                    </li>
 
                    <li class="nav-item">
                        <a class="text-light nav-link me-2" href="ADM_VET.php">| VETERANOS</a>
                    </li>
                    <li class="nav-item">
                        <a class="text-light nav-link me-2" href="ADM_CURSOS.php">| TEXTOS DOS CURSOS</a>
                    </li>
                    
                </ul>
                <a href="sair.php" class="ms-auto">
                    <img src="../images/sair.png" width="40" height="40" alt="Logo">
                </a>
            

            </div>
        </div>
    </nav>
    <!-- End NavBar-->

    <!-- Start Image -->
    <div class="container1" id="im">
        <img class="imagem1" src="../Images/banner.png" alt="Frente da Etec">
    </div>
    <!-- End Imagem -->

    <!-- Start Developers -->
    <div class="container mt-5" id="eq">
        <p class="text-center mb-4 equipe-titulo" >DESENVOLVEDORES</p>
        <div class="row">
            <div class="col-md-3 mb-4">
                <div class="card" style="width: 100%;">
                    <img src="../Images/Renan.png" class="card-img-top" alt="Imagem do Card 1">
                    <div class="card-body">
                        <h5 class="card-title">Renan Moraes</h5>
                        <p class="card-text">Responsavel pela parte Frontend e Backend.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card" style="width: 100%;">
                    <img src="../Images/Julia.png" class="card-img-top" alt="Imagem do Card 2">
                    <div class="card-body">
                        <h5 class="card-title">Julia Sorrente</h5>
                        <p class="card-text">responsavel pela Parte Backend e Frontend do site.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card" style="width: 100%;">
                    <img src="../Images/Marcos.png" class="card-img-top" alt="Imagem do Card 3">
                    <div class="card-body">
                        <h5 class="card-title">Marcos Alexandre</h5>
                        <p class="card-text">Responsavel pela parte Backend do site.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card" style="width: 100%;">
                    <img src="../Images/Conde1.png" class="card-img-top" alt="Imagem do Card 4">
                    <div class="card-body">
                        <h5 class="card-title">Letycia Conde</h5>
                        <p class="card-text">Responsavel pela parte Frontend do site.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End developers -->

<!-- Start about project -->
<div class="container mt-5" id="sb">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
            <p class="text-center mb-4 equipe-titulo">SOBRE O PROJETO</p>
            <p class="textpsb card card-body">O site tem como objetivo compartilhar opiniões e
                experiencias durante o ensino médio, assim ajudando os
                novos alunos a escolherem o curso no qual mais irão se
                identificar e deixá-los mais confortáveis para um novo ciclo
                que logo se iniciará. Além de ajudar com os novos alunos,
                esse site tem como finalidade ajudar a coordenação com
                críticas que podem ser levadas em consideração para
                melhoria da escola. Sendo assim diminuindo o número de
                desistência durante os anos letivos, e o cansaço extremo
                do aluno por fazer um curso em que não se identifique.</p>
        </div>
    </div>
</div>
<!-- End about project -->

    <!-- End Footer -->
    <footer class="bg-body-tertiary text-center text-lg-start">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
            © 2024 Integra Etec:
            <a class="text-body" href="https://etecbebedouro.com.br">etecbebedouro.com.br</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- End Footer -->

</body>
</html>
