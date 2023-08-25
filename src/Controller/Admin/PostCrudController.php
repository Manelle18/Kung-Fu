<?php

namespace App\Controller\Admin;

use App\Entity\Post;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class PostCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Post::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('prenom'),
            TextField::new('nom'),
            TextField::new('message'),
            // ImageField::new('media')
            //     ->setUploadDir('/public/assets/images')
            //     ->setUploadedFileNamePattern('[contenthash].[extension]'),
            TextField::new('ceinture'),
            TextField::new('championnat_france'),
            TextField::new('coupe_france'),
            TextField::new('open_france'),
            TextField::new('categorie'),
            TextField::new('poids'),
            AssociationField::new('media')
                ->autocomplete(),
            AssociationField::new('user')
                ->autocomplete()
        ];
    }
}
