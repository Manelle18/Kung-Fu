<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class SandataoController extends AbstractController
{
    #[Route('/sandatao', name: 'app_sandatao')]
    public function index(): Response
    {
        return $this->render('sandatao/sandatao.html.twig', [
            'controller_name' => 'SandataoController',
        ]);
    }
}
