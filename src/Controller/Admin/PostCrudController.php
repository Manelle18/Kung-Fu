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
            TextEditorField::new('message'),
            // ImageField::new('media')
            //     ->setUploadDir('/public/assets/images')
            //     ->setUploadedFileNamePattern('[contenthash].[extension]'),
            AssociationField::new('media')
                ->autocomplete(),
            AssociationField::new('user')
                ->autocomplete()
        ];
    }
}
