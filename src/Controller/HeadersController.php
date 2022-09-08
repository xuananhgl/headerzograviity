<?php
// src/Controller/HeadersController.php

namespace App\Controller;
use App\Controller\AppController;
use Cake\ORM\Behavior\Translate\TranslateTrait;
use Cake\I18n\I18n;
class HeadersController extends AppController
{  

    public function initialize()
    {
        parent::initialize();

        $this->loadComponent('Flash'); // Include the FlashComponent
    }
    
    
    public function add()
        {
                $header = $this->Headers->newEntity($this->request->getData());
                if ($this->request->is('post')) 
                { $header = $this->Headers->patchEntity($header, $this->request->getData());
                    $translations = [
                        'en_US' => ['about' => $this->request->getData('_translations.en_US.about')],
                        'es' => ['about' => $this->request->getData('_translations.es.about')], 
                        'vi_VN' => ['about' => $this->request->getData('_translations.vi_VN.about')], 

                        'en_US' => ['title' => $this->request->getData('_translations.en_US.title')],
                        'es' => ['title' => $this->request->getData('_translations.es.title')], 
                        'vi_VN' => ['title' => $this->request->getData('_translations.vi_VN.title')]
                    ];
                    
                    
                    foreach ($translations as $lang => $data) {
                        $header->translation($lang)->set($data, ['guard' => false]);
                    }

              
                $header->user_id = $this->Auth->user('id');
                
                if ($this->Headers->save($header)) {
                    $this->Flash->success(__('Your article has been saved.'));
                    return $this->redirect(['action' => 'index']);
                }
                $this->Flash->error(__('Unable to add your article.'));
                }
                //  $header = $this->Headers->find('translations')->first();
                $this->set('header', $header);


               
               
        }

    
    
    public function index()
        {           
                    if($this->request->is('post')) {}
                    $locale = $this->request->getData('locale');
                
                
                    //I18n::setLocale($locale);
                    // luu locate vao session/config/db
                    //reload
                    $this->loadModel('Headers');
                    $headers= $this->Headers->find(
                        'all', [
                            'order'=> 'rand()',
                            'limit'=>1,
                        ]
                    );
                    $this->set(compact('headers'));
                   
                    // Debug( $headers);
                    // exit;


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
    public function edit($id = null)
        {   
            //  $this->Pours->setLocale('vi');  
            $header = $this->Headers->get($id);
            if ($this->request->is(['patch', 'post', 'put'])) {
                $header = $this->Headers->patchEntity($header, $this->request->getData());

                 $header->user_id = $this->Auth->user('id');
                if ($this->Headers->save($header)) {
                    $this->Flash->success(__('The user has been saved.'));
    
                    return $this->redirect(['action' => 'index']);
                }
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
            $this->set(compact('header'));
        }
    
    public function delete($id)
                {
                        $this->request->allowMethod(['post', 'delete']);


                        

                             $header = $this->Headers->get($id);
                             $header->user_id = $this->Auth->user('id');
                        if ($this->Headers->delete($header)) {
                            $this->Flash->success(__('The post with id: {0} has been deleted.', h($id)));
                            return $this->redirect(['action' => 'index']);
                        }
                }
     public function isAuthorized($user)
            {
                $action = $this->request->getParam('action');
             
                if (in_array($action, ['add', 'edit', 'delete'])) {
                    return true;
                }

                // All other actions require a slug.
                $id = $this->request->getParam('pass.0');
                if (!$id) {
                    return false;
                }

                // Check that the article belongs to the current user.
                $header = $this->Headers->get($id)->first();

                return $header->user_id === $user['id'];
            }


}