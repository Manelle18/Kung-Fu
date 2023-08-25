<?php

namespace App\Entity;

use App\Repository\PostRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PostRepository::class)]
class Post
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[ORM\Column(length: 255)]
    private ?string $prenom = null;

    #[ORM\Column(length: 255)]
    private ?string $message = null;

    #[ORM\ManyToOne(inversedBy: 'posts')]
    #[ORM\JoinColumn(nullable: false)]
    private ?User $user = null;

    #[ORM\OneToOne(cascade: ['persist', 'remove'])]
    private ?Media $media = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $ceinture = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $championnat_france = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $coupe_france = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $open_france = null;

    #[ORM\Column(length: 255)]
    private ?string $categorie = null;

    #[ORM\Column(length: 255)]
    private ?string $poids = null;

    public function __construct()
    {

    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getPrenom(): ?string
    {
        return $this->prenom;
    }

    public function setPrenom(string $prenom): self
    {
        $this->prenom = $prenom;

        return $this;
    }

    public function getMessage(): ?string
    {
        return $this->message;
    }

    public function setMessage(string $message): self
    {
        $this->message = $message;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): self
    {
        $this->user = $user;

        return $this;
    }

    public function getMedia(): ?Media
    {
        return $this->media;
    }

    public function setMedia(?Media $media): self
    {
        $this->media = $media;

        return $this;
    }

    public function getCeinture(): ?string
    {
        return $this->ceinture;
    }

    public function setCeinture(?string $ceinture): self
    {
        $this->ceinture = $ceinture;

        return $this;
    }

    public function getChampionnatFrance(): ?string
    {
        return $this->championnat_france;
    }

    public function setChampionnatFrance(?string $championnat_france): self
    {
        $this->championnat_france = $championnat_france;

        return $this;
    }

    public function getCoupeFrance(): ?string
    {
        return $this->coupe_france;
    }

    public function setCoupeFrance(?string $coupe_france): self
    {
        $this->coupe_france = $coupe_france;

        return $this;
    }

    public function getOpenFrance(): ?string
    {
        return $this->open_france;
    }

    public function setOpenFrance(?string $open_france): self
    {
        $this->open_france = $open_france;

        return $this;
    }

    public function getCategorie(): ?string
    {
        return $this->categorie;
    }

    public function setCategorie(string $categorie): self
    {
        $this->categorie = $categorie;

        return $this;
    }

    public function getPoids(): ?string
    {
        return $this->poids;
    }

    public function setPoids(string $poids): self
    {
        $this->poids = $poids;

        return $this;
    }
}
