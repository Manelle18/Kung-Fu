<?php

namespace App\Controller;

use App\Repository\ContactRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;

class EmailController extends AbstractController
{
    #[Route('/email/{id}', name: 'app_email')]
    public function sendmail(MailerInterface $mailer, int $id, ContactRepository $contactRepository)
    {
        $contact = $contactRepository->find($id);


        $email = (new Email())
            ->from($contact->getEmail())
            ->to('you@example.com')
            //->cc('cc@example.com')
            //->bcc('bcc@example.com')
            //->replyTo('fabien@example.com')
            //->priority(Email::PRIORITY_HIGH)
            ->subject($contact->getSujet())
            // ->text($contact->getMessage());
            ->html('
                <h3>' . $contact->getNom() . ' ' . $contact->getPrenom() . '</h3>
                <p>' . $contact->getMessage() . '</p>
            ');

        $mailer->send($email);

        $this->addFlash('success', 'Le mail à bien été envoyé, nous reviendront vers vous dès que possible');
        return $this->redirectToRoute('app_contact');
    }
}
