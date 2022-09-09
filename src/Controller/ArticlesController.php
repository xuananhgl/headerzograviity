<?php
namespace App\Controller;
use App\Controller\AppController;
use Cake\ORM\Behavior\Translate\TranslateTrait;
use Cake\I18n\I18n;



/**
 * Articles Controller
 *
 * @property \App\Model\Table\ArticlesTable $Articles
 *
 * @method \App\Model\Entity\Article[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class ArticlesController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index()
    {
        $articles = $this->paginate($this->Articles);

        $this->set(compact('articles'));
    }

    /**
     * View method
     *
     * @param string|null $id Article id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
 
    public function view($id = null)
    {
            $article = $this->Articles->get($id);
            $this->set(compact('article'));
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $article = $this->Articles->newEntity();
        if ($this->request->is('post')) {
            $article = $this->Articles->patchEntity($article, $this->request->getData());
            $translations = [
                // tieng anh
                                    'en_US' => ['body' => $this->request->getData('_translations.en_US.body')],
                                    'en_US' => ['body2' => $this->request->getData('_translations.en_US.body2')],
                                    'en_US' => ['body3' => $this->request->getData('_translations.en_US.body3')],
                                    'en_US' => ['body4' => $this->request->getData('_translations.en_US.body4')],

                                    'en_US' => ['title' => $this->request->getData('_translations.en_US.title')],
                                    'en_US' => ['title2' => $this->request->getData('_translations.en_US.title2')],
                                    'en_US' => ['title3' => $this->request->getData('_translations.en_US.title3')],
                                    'en_US' => ['title4' => $this->request->getData('_translations.en_US.title4')],

                                    'en_US' => ['about' => $this->request->getData('_translations.en_US.about')],
                                    'en_US' => ['about2' => $this->request->getData('_translations.en_US.about2')],
                                    'en_US' => ['about3' => $this->request->getData('_translations.en_US.about3')],
                                    'en_US' => ['about4' => $this->request->getData('_translations.en_US.about4')],
                                            // tieng tay ban nha
                                    'es' => ['body' => $this->request->getData('_translations.es.body')],
                                    'es' => ['body2' => $this->request->getData('_translations.es.body2')],
                                    'es' => ['body3' => $this->request->getData('_translations.es.body3')],
                                    'es' => ['body4' => $this->request->getData('_translations.es.body4')],

                                    'es' => ['title' => $this->request->getData('_translations.es.title')],
                                    'es' => ['title2' => $this->request->getData('_translations.es.title2')],
                                    'es' => ['title3' => $this->request->getData('_translations.es.title3')],
                                    'es' => ['title4' => $this->request->getData('_translations.es.title4')],

                                    'es' => ['about' => $this->request->getData('_translations.es.about')],
                                    'es' => ['about2' => $this->request->getData('_translations.es.about2')],
                                    'es' => ['about3' => $this->request->getData('_translations.es.about3')],
                                    'es' => ['about4' => $this->request->getData('_translations.es.about4')],
                                                    // tiengviet
                                    'vi_VN' => ['body' => $this->request->getData('_translations.vi_VN.body')],
                                    'vi_VN' => ['body2' => $this->request->getData('_translations.vi_VN.body2')],
                                    'vi_VN' => ['body3' => $this->request->getData('_translations.vi_VN.body3')],
                                    'vi_VN' => ['body4' => $this->request->getData('_translations.vi_VN.body4')],

                                    'vi_VN' => ['title' => $this->request->getData('_translations.vi_VN.title')],
                                    'vi_VN' => ['title2' => $this->request->getData('_translations.vi_VN.title2')],
                                    'vi_VN' => ['title3' => $this->request->getData('_translations.vi_VN.title3')],
                                    'vi_VN' => ['title4' => $this->request->getData('_translations.vi_VN.title4')],

                                    'vi_VN' => ['about' => $this->request->getData('_translations.vi_VN.about')],
                                    'vi_VN' => ['about2' => $this->request->getData('_translations.vi_VN.about2')],
                                    'vi_VN' => ['about3' => $this->request->getData('_translations.vi_VN.about3')],
                                    'vi_VN' => ['about4' => $this->request->getData('_translations.vi_VN.about4')]
                
              
            ];
            
            foreach ($translations as $lang => $data) {
                $article->translation($lang)->set($data, ['guard' => false]);
            }
            // Hardcoding the user_id is temporary, and will be removed later
            // when we build authentication out.
            $article->user_id = $this->Auth->user('id');

            if ($this->Articles->save($article)) {
                $this->Flash->success(__('Your article has been saved.'));
                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('Unable to add your article.'));
        }
       
        $this->set('article', $article);
    }

    //  

    /**
     * Edit method
     *
     * @param string|null $id Article id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    // public function edit($id = null)
    // {
    //     $article = $this->Articles->get($id, [
    //         'contain' => []
    //     ]);
    //     if ($this->request->is(['patch', 'post', 'put'])) {
    //         $article = $this->Articles->patchEntity($article, $this->request->getData());
    //         if ($this->Articles->save($article)) {
    //             $this->Flash->success(__('The article has been saved.'));

    //             return $this->redirect(['action' => 'index']);
    //         }
    //         $this->Flash->error(__('The article could not be saved. Please, try again.'));
    //     }
    //     $this->set(compact('article'));
    // }
            // in src/Controller/ArticlesController.php

    // Add the following method.
    public function edit($id)
    {
        $article = $this->Articles->get($id);
     
        if ($this->request->is(['patch','post', 'put'])) {
            $this->Articles->patchEntity($article, $this->request->getData());
                 $article->user_id = $this->Auth->user('id');
            if ($this->Articles->save($article)) {
                $this->Flash->success(__('Your article has been updated.'));
                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('Unable to update your article.'));
        }
    
     
    
        $this->set('article', $article);
    }

    /**
     * Delete method
     *
     * @param string|null $id Article id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    // public function delete($id = null)
    // {
    //     $this->request->allowMethod(['post', 'delete']);
    //     $article = $this->Articles->get($id);
    //     if ($this->Articles->delete($article)) {
    //         $this->Flash->success(__('The article has been deleted.'));
    //     } else {
    //         $this->Flash->error(__('The article could not be deleted. Please, try again.'));
    //     }

    //     return $this->redirect(['action' => 'index']);
    // }
    


    public function delete($id)
{
    $this->request->allowMethod(['post', 'delete']);
    $article->user_id = $this->Auth->user('id');
    $article = $this->Articles->get($id);
    if ($this->Articles->delete($article)) {
        $this->Flash->success(__('The {0} article has been deleted.', $article->title));
        return $this->redirect(['action' => 'index']);
    }
}

}
