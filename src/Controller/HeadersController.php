<?php
// src/Controller/HeadersController.php

namespace App\Controller;
use App\Controller\AppController;
use Cake\ORM\Behavior\Translate\TranslateTrait;
use Cake\I18n\I18n;
class HeadersController extends AppController
{   public function add(){
    $header = $this->Headers->newEntity();
    if ($this->request->is('post')) {
      $header = $this->Headers->patchEntity($header, $this->request->data);
      if(isset($this->request->data['french']) && !empty($this->request->data['french'])){
        $header->translation('fr')->my_about = $this->request->data['french'];
         $header->translation('fr')->my_title = $this->request->data['french-title'];
      }
      if(isset($this->request->data['spanish']) && !empty($this->request->data['spanish'])){
        $header->translation('es')->my_about = $this->request->data['spanish'];
        $header->translation('es')->my_title = $this->request->data['spanish-title'];
        
      }
      if(isset($this->request->data['vietnam']) && !empty($this->request->data['vietnam'])){
        $header->translation('vi')->my_about = $this->request->data['vietnam'];
        $header->translation('vi')->my_title = $this->request->data['vietnam-title'];
      }
      $header->user_id = $this->Auth->user('id');
     
      if ($this->Headers->save($header)) {
        $this->Flash->success(__('Your article has been saved.'));
        return $this->redirect(['action' => 'index']);
      }
      $this->Flash->error(__('Unable to add your article.'));
    }
    $this->set('header', $header);




}

    
    
    public function index()
    {   if($this->request->is('post')) {}
        $locale = $this->request->getData('locale');
    
     
        I18n::setLocale($locale);
        $this->loadModel('Headers');
        $headers= $this->Headers->find(
            'all', [
                'order'=> 'rand()',
                'limit'=>1,
            ]
        );
        $this->set(compact('headers'));
        I18n::setLocale($locale);
         $result = $this->loadModel('Pres');
        $data=$result->find(
            'all', [
                'order'=> 'rand()',
                'limit'=>1,
            ]
        );
        $this->set('datas',$data);
        I18n::setLocale($locale);
        $this->loadModel('Pours');
        $pours= $this->Pours->find(
            'all', [
                'order'=> 'rand()',
                'limit'=>1,
            ]
        );
        $this->set(compact('pours'));
        
    }
    // public function sliders()
    // {
       
    // }
    public function list()
    {
        $this->loadComponent('Paginator');
        $headers = $this->Paginator->paginate($this->Headers->find());
        $this->set(compact('headers'));
    }
   public function view($id= null)
{
        $header = $this->Headers->get($id);
            
        $this->set('header', $header);
    }
    public function edit()
    {
        $header = $this->Headers->newEntity();
        if ($this->request->is('post', 'put')) {
            $header = $this->Headers->patchEntity($header, $this->request->getData()); 
        
            if ($this->Headers->save($header)) {
                $this->Flash->success(__('Your article has been edit.'));
                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('Unable to add your article.'));
        }
        $this->set('header', $header);
    }
    // src/Controller/ArticlesController.php


       public function delete($id)
    {
    $this->request->allowMethod(['post', 'delete']);

    $header = $this->Headers->get($id);
    if ($this->Headers->delete($header)) {
        $this->Flash->success(__('The post with id: {0} has been deleted.', h($id)));
        return $this->redirect(['action' => 'index']);
    }
    }

}