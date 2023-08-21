<?php

namespace App\Controller;

use App\Entity\Resultats;
use App\Form\ForminfoType;
use App\Repository\PostRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ResultatsRepository;

class ResultatsController extends AbstractController
{
    #[Route('/resultats', name: 'app_resultats')]
    public function index(PostRepository $postRepository): Response
    {
        // Récupérer toutes les données de la table "resultats"
        $resultats = $postRepository->findAll();

        return $this->render('resultats/resultats.html.twig', [
            'controller_name' => 'ResultatsController',
            'resultats' => $resultats, // Passer les données à la vue
        ]);
    }

    
}
