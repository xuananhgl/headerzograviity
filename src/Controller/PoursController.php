<?php
// src/Controller/HeadersController.php

namespace App\Controller;
use App\Controller\AppController;
use Cake\ORM\Behavior\Translate\TranslateTrait;
use Cake\I18n\I18n;
class PoursController extends AppController
        {   
    public function add(){
                $pour = $this->Pours->newEntity($this->request->getData());
                if ($this->request->is('post')) 
                {
                    $translations = [
                        'en_US' => ['about' => $this->request->getData('_translations.en_US.about')],
                        'es' => ['about' => $this->request->getData('_translations.es.about')], 
                        'vi_VN' => ['about' => $this->request->getData('_translations.vi_VN.about')],

                        'en_US' => ['logo' => $this->request->getData('_translations.en_US.logo')],
                        'es' => ['logo' => $this->request->getData('_translations.es.logo')], 
                        'vi_VN' => ['logo' => $this->request->getData('_translations.vi_VN.logo')],

                        'en_US' => ['title' => $this->request->getData('_translations.en_US.title')],
                        'es' => ['title' => $this->request->getData('_translations.es.title')], 
                        'vi_VN' => ['title' => $this->request->getData('_translations.vi_VN.title')],

                        'en_US' => ['Notre_engagement' => $this->request->getData('_translations.en_US.Notre_engagement')],
                        'es' => ['Notre_engagement' => $this->request->getData('_translations.es.Notre_engagement')], 
                        'vi_VN' => ['Notre_engagement' => $this->request->getData('_translations.vi_VN.Notre_engagement')],

                        'en_US' => ['about2' => $this->request->getData('_translations.en_US.about2')],
                        'es' => ['about2' => $this->request->getData('_translations.es.about2')], 
                        'vi_VN' => ['about2' => $this->request->getData('_translations.vi_VN.about2')],

                        'en_US' => ['about_notre' => $this->request->getData('_translations.en_US.about_notre')],
                        'es' => ['about_notre' => $this->request->getData('_translations.es.about_notre')], 
                        'vi_VN' => ['about_notre' => $this->request->getData('_translations.vi_VN.about_notre')],

                        'en_US' => ['note' => $this->request->getData('_translations.en_US.note')],
                        'es' => ['note' => $this->request->getData('_translations.es.note')], 
                        'vi_VN' => ['note' => $this->request->getData('_translations.vi_VN.note')]

                    ];
                    
                    
                    foreach ($translations as $lang => $data) {
                        $pour->translation($lang)->set($data, ['guard' => false]);
                    } 
                
                $pour->user_id = $this->Auth->user('id');
                
                if ($this->Pours->save($pour)) {
                    $this->Flash->success(__('Your article has been saved.'));
                    return $this->redirect(['action' => 'index']);
                }
                $this->Flash->error(__('Unable to add your article.'));
                }
                $this->set('pour', $pour);




            }
    public function index()
            {
                $this->loadComponent('Paginator');
                $pours = $this->Paginator->paginate($this->Pours->find());
                $this->set(compact('pours'));
            }
     public function delete($id)
            {
            $this->request->allowMethod(['post', 'delete']);

            $pour = $this->Pours->get($id);
            if ($this->Pours->delete($pour)) {
                $this->Flash->success(__('The post with id: {0} has been deleted.', h($id)));
                return $this->redirect(['action' => 'index']);
            }
            }
        public function view($id= null)
            {
            $pour = $this->Pours->get($id);
                
            $this->set('pour', $pour);
            }

        public function edit($id = null)
            {
                // $this->Pours->setLocale('vi');           
                $pour = $this->Pours->get($id);
                if ($this->request->is(['patch', 'post', 'put'])) {
                    $pre = $this->Pours->patchEntity($pour, $this->request->getData());
                    if ($this->Pours->save($pour)) {
                        $this->Flash->success(__('The user has been saved.'));
        
                        return $this->redirect(['action' => 'index']);
                    }
                    $this->Flash->error(__('The user could not be saved. Please, try again.'));
                }
                $this->set(compact('pour'));
            }
        public function isAuthorized($user)
            {
                $action = $this->request->getParam('action');
                // The add and tags actions are always allowed to logged in users.
                if (in_array($action, ['add', 'tags', 'delete'])) {
                    return true;
                }

                // All other actions require a slug.
                $id = $this->request->getParam('pass.0');
                if (!$id) {
                    return false;
                }

                // Check that the article belongs to the current user.
                $pour = $this->Pours->get($id)->first();

                return $pre->user_id === $user['id'];
            }

    }