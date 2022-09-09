<?php

namespace App\Model\Entity;
use Cake\Collection\Collection;
use Cake\ORM\Behavior\Translate\TranslateTrait;
use Cake\ORM\Entity;

class Article extends Entity
{
    use TranslateTrait;
    protected $_accessible = [
        '*' => true,
        'id' => false,
       
       
    ];
    protected function _getTagString()
    {
        if (isset($this->_properties['tag_string'])) {
            return $this->_properties['tag_string'];
        }
        if (empty($this->tags)) {
            return '';
        }
        $tags = new Collection($this->tags);
        $str = $tags->reduce(function ($string, $tag) {
            return $string . $tag->title . ', ';
        }, '');
        return trim($str, ', ');
    }







}