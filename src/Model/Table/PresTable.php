<?php
namespace App\Model\Table;
use Cake\ORM\Query;
use Cake\ORM\Table;
use Cake\Utility\Text;
use Cake\Validation\Validator;
class PresTable extends Table
{
    public function initialize(array $config)
    {  
        $this->addBehavior('Translate', [
            'fields' =>
             ['about', 'dress', 'author',
             'about2', 'dress2', 'author2',
             'about3', 'dress3', 'author3'
            ],
            'translationTable' => 'PresI18n', 
            'allowEmptyTranslations' => false 
            
            
        ]);
        $this->setPrimaryKey('id');

        }
}