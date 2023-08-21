<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class StyleController extends AbstractController
{
    #[Route('/style', name: 'app_style')]
    public function index(): Response
    {
        return $this->render('style/style.html.twig', [
            'controller_name' => 'StyleController',
        ]);
    }
}
