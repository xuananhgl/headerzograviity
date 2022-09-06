<?php
// src/Controller/HeadersController.php

namespace App\Controller;
use App\Controller\AppController;
use Cake\ORM\Behavior\Translate\TranslateTrait;
use Cake\I18n\I18n;
class PresController extends AppController
        {   public function add(){
            $pre = $this->Pres->newEntity();
            if ($this->request->is('post')) {
            $pre = $this->Pres->patchEntity($pre, $this->request->data);
            if(isset($this->request->data['french']) && !empty($this->request->data['french'])){
                $pre->translation('fr')->about = $this->request->data['french'];
               
            }
            if(isset($this->request->data['spanish']) && !empty($this->request->data['spanish'])){
                $pre->translation('es')->about = $this->request->data['spanish'];
                
                
            }
            if(isset($this->request->data['vietnam']) && !empty($this->request->data['vietnam'])){
                $pre->translation('vi')->about = $this->request->data['vietnam'];
                
                
            }
            
            $pre->user_id = $this->Auth->user('id');
            
            if ($this->Pres->save($pre)) {
                $this->Flash->success(__('Your article has been saved.'));
                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('Unable to add your article.'));
            }
            $this->set('pre', $pre);




        }
        public function index()
    {
        $this->loadComponent('Paginator');
        $pres = $this->Paginator->paginate($this->Pres->find());
        $this->set(compact('pres'));
    }
    public function delete($id)
    {
    $this->request->allowMethod(['post', 'delete']);

    $pre = $this->Pres->get($id);
    if ($this->Pres->delete($pre)) {
        $this->Flash->success(__('The post with id: {0} has been deleted.', h($id)));
        return $this->redirect(['action' => 'index']);
    }
    }
    }