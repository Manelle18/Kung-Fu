<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MaitreController extends AbstractController
{
    #[Route('/maitre', name: 'app_maitre')]
    public function index(): Response
    {
        return $this->render('maitre/maitre.html.twig', [
            'controller_name' => 'MaitreController',
        ]);
    }
}
