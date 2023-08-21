<?php

namespace App\Controller\Admin;

use App\Entity\Media;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class MediaCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Media::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('mediaPath')
                ->onlyOnDetail()
                ->onlyOnIndex(),
            ImageField::new('mediaPath')
                ->setBasePath('/public/assets/images')
                ->setUploadDir('/public/assets/images')
                ->onlyOnForms()
        ];
    }
    
}
