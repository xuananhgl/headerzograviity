<?php
namespace App\Controller;
use App\Controller\AppController;
use Cake\ORM\Behavior\Translate\TranslateTrait;
use Cake\I18n\I18n;
class PresController extends AppController
        {   public function add(){
            $pre = $this->Pres->newEntity($this->request->getData());
            if ($this->request->is('post')) {
            $translations = [

                            // TIENG ANH
                'en_US' => ['about' => $this->request->getData('_translations.en_US.about')],
                'en_US' => ['author' => $this->request->getData('_translations.en_US.author')],
                'en_US' => ['dress' => $this->request->getData('_translations.en_US.dress')],

                            // TAY BAN NHA
                'es' => ['about' => $this->request->getData('_translations.es.about')], 
                'es' => ['author' => $this->request->getData('_translations.es.author')], 
                'es' => ['dress' => $this->request->getData('_translations.es.dress')], 

                                        // TIENGVIET
                'vi_VN' => ['about' => $this->request->getData('_translations.vi_VN.about')],
                'vi_VN' => ['author' => $this->request->getData('_translations.vi_VN.author')],
                'vi_VN' => ['dress' => $this->request->getData('_translations.vi_VN.dress')],

                            // TIENG ANH2
                'en_US' => ['about2' => $this->request->getData('_translations.en_US.about2')],
                'en_US' => ['author2' => $this->request->getData('_translations.en_US.author2')],
                'en_US' => ['dress2' => $this->request->getData('_translations.en_US.dress2')],

                            // TAY BAN NHA2
                'es' => ['about2' => $this->request->getData('_translations.es.about2')], 
                'es' => ['author2' => $this->request->getData('_translations.es.author2')], 
                'es' => ['dress2' => $this->request->getData('_translations.es.dress2')], 

                                        // TIENGVIET2
                'vi_VN' => ['about2' => $this->request->getData('_translations.vi_VN.about2')],
                'vi_VN' => ['author2' => $this->request->getData('_translations.vi_VN.author2')],
                'vi_VN' => ['dress2' => $this->request->getData('_translations.vi_VN.dress2')],

                            // TIENG ANH3
                    'en_US' => ['about3' => $this->request->getData('_translations.en_US.about2')],
                'en_US' => ['author3' => $this->request->getData('_translations.en_US.author2')],
                'en_US' => ['dress3' => $this->request->getData('_translations.en_US.dress2')],

                            // TAY BAN NHA3
                'es' => ['about3' => $this->request->getData('_translations.es.about2')], 
                'es' => ['author3' => $this->request->getData('_translations.es.author2')], 
                'es' => ['dress3' => $this->request->getData('_translations.es.dress2')], 

                                        // TIENGVIET3
                'vi_VN' => ['about3' => $this->request->getData('_translations.vi_VN.about3')],
                'vi_VN' => ['author3' => $this->request->getData('_translations.vi_VN.author3')],
                'vi_VN' => ['dress3' => $this->request->getData('_translations.vi_VN.dress3')]
            ];
            
            
            foreach ($translations as $lang => $data) {
                $pre->translation($lang)->set($data, ['guard' => false]);
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
      public function view($id= null)
        {
        $pre = $this->Pres->get($id);
            
        $this->set('pre', $pre);
        }

        public function edit($id = null)
        {
            $pre = $this->Pres->get($id);
            if ($this->request->is(['patch', 'post', 'put'])) {
                $pre = $this->Pres->patchEntity($pre, $this->request->getData());
                if ($this->Pres->save($pre)) {
                    $this->Flash->success(__('The user has been saved.'));
    
                    return $this->redirect(['action' => 'index']);
                }
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
            $this->set(compact('pre'));
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
    $pre = $this->Pres->get($id)->first();

    return $pre->user_id === $user['id'];
}

    }