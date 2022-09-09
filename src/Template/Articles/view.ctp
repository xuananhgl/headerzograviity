
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
    </li>
         <li class="heading"><h3><?= $this->Html->link(__('Z0graviry'), ['controller' => 'Headers', 'action' => 'index']) ?></h3></li>
          <li class="heading"><h6><?= __('PRESSE') ?></h6></li>
        <li><?= $this->Html->link(__('New Presses'), ['controller' => 'Pres', 'action' => 'add']) ?></li>
         <li><?= $this->Html->link(__('List Presses'), ['controller' => 'Pres', 'action' => 'index']) ?></li>
         <li class="heading"><h6><?= __('POURS') ?></h6></li>
        <li ><?= $this->Html->link(__('New Pours'), ['controller' => 'Pours', 'action' => 'add']) ?></li>
         <li><?= $this->Html->link(__('List Pours'), ['controller' => 'Pours', 'action' => 'index']) ?></li>
         <li class="heading"><h6><?= __('HEADERS') ?></h6></li>
        <li><?= $this->Html->link(__('New Header'), ['controller' => 'Headers', 'action' => 'add']) ?></li>
         <li><?= $this->Html->link(__('New Headers'), ['controller' => 'Headers', 'action' => 'list']) ?></li>
         <li class="heading"><h6><?= __('USERS') ?></h6></li>
        <li><?= $this->Html->link(__('New Users'), ['controller' => 'Users', 'action' => 'add']) ?></li>
         <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('LOGIN'), ['controller' => 'Users', 'action' => 'login']) ?></li>
          <li><?= $this->Html->link(__('LOGOUT'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
    </ul>
</nav>

<div class="users view large-9 medium-8 columns content">
    <h3><?= h($article->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Title') ?></th>
            <td><?= h($article->title) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('body ') ?></th>
            <td><?= h($article->body ) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('img') ?></th>
            <td><?= h($article->img) ?></td>
        </tr>
         <tr>
            <th scope="row"><?= __('img') ?></th>
            <td><?= h($article->about) ?></td>
        </tr>
        

        <tr>
            <th scope="row"><?= __('Title2') ?></th>
            <td><?= h($article->title2) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('body2') ?></th>
            <td><?= h($article->body2) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('img2') ?></th>
            <td><?= h($article->img2) ?></td>
        </tr>
         <tr>
            <th scope="row"><?= __('about2') ?></th>
            <td><?= h($article->about2) ?></td>
        </tr>

        <tr>
            <th scope="row"><?= __('Title3') ?></th>
            <td><?= h($article->title3) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('body3') ?></th>
            <td><?= h($article->body3) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('img3') ?></th>
            <td><?= h($article->img3) ?></td>
        </tr>
         <tr>
            <th scope="row"><?= __('about3') ?></th>
            <td><?= h($article->about3) ?></td>
        </tr>

        <tr>
            <th scope="row"><?= __('Title4') ?></th>
            <td><?= h($article->title) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('body4') ?></th>
            <td><?= h($article->body4) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('img4') ?></th>
            <td><?= h($article->img4) ?></td>
        </tr>
         <tr>
            <th scope="row"><?= __('about4') ?></th>
            <td><?= h($article->about4) ?></td>
        </tr>
    </table>
                    <?= $this->Html->link(__('View'), ['controller' => 'Headers', 'action' => 'view', $article->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['controller' => 'Headers', 'action' => 'edit', $article->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'Headers', 'action' => 'delete', $article->id], ['confirm' => __('Are you sure you want to delete # {0}?', $article->id)]) ?>
                </td>
            </tr>
          
        </table>
       
    </div>
</div>
