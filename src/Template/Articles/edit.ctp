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
<div class="articles form large-9 medium-8 columns content">
 
  <h3><?= __('Edit article') ?></h3>
  <fieldset>
    
    
    <?=  $this->Form->create($article);?>
   
     
             <legend>Dynamic-content</legend>
<?=  $this->Form->control('user_id', ['type' => 'hidden', 'value' => 1]);?>
     <?=  $this->Form->control('title');?>

     <?=  $this->Form->input('img');?>
     <?=  $this->Form->input('body');?>
     <?=  $this->Form->input('about');?>

     <?=  $this->Form->control('title2');?>
     <?=  $this->Form->input('img2');?>
     <?=  $this->Form->input('body2');?>
     <?=  $this->Form->input('about2');?>
     
     <?=  $this->Form->control('title3');?>
     <?=  $this->Form->input('img3');?>
     <?=  $this->Form->input('body3');?>
     <?=  $this->Form->input('about3');?>
     
     <?=  $this->Form->control('title4');?>
     <?=  $this->Form->input('img4');?>
     <?=  $this->Form->input('body4');?>
     <?=  $this->Form->input('about4');?>
     
     
       
               <legend class="English">English</legend>
      <?= $this->Form->control('_translations.en_US.title'); ?>
      <?= $this->Form->control('_translations.en_US.body'); ?>
      <?= $this->Form->control('_translations.en_US.about'); ?>

      <?= $this->Form->control('_translations.en_US.title2'); ?>
      <?= $this->Form->control('_translations.en_US.body2'); ?>
      <?= $this->Form->control('_translations.en_US.about2'); ?>

      <?= $this->Form->control('_translations.en_US.title3'); ?>
      <?= $this->Form->control('_translations.en_US.body3'); ?>
      <?= $this->Form->control('_translations.en_US.about3'); ?>

      <?= $this->Form->control('_translations.en_US.title4'); ?>
      <?= $this->Form->control('_translations.en_US.body4'); ?>
      <?= $this->Form->control('_translations.en_US.about4'); ?>
                      <legend>Spanish</legend>
      <?= $this->Form->control('_translations.es.title'); ?>
      <?= $this->Form->control('_translations.es.body'); ?>
      <?= $this->Form->control('_translations.es.about'); ?>

      <?= $this->Form->control('_translations.es.title2'); ?>
      <?= $this->Form->control('_translations.es.body2'); ?>
      <?= $this->Form->control('_translations.es.about2'); ?>

      <?= $this->Form->control('_translations.es.title3'); ?>
      <?= $this->Form->control('_translations.es.body3'); ?>
      <?= $this->Form->control('_translations.es.about3'); ?>

      <?= $this->Form->control('_translations.es.title4'); ?>
      <?= $this->Form->control('_translations.es.body4'); ?>
      <?= $this->Form->control('_translations.es.about4'); ?>
                <legend legend>Tieng-VIet</legend>
    <?= $this->Form->control('_translations.vi_VN.title'); ?>
      <?= $this->Form->control('_translations.vi_VN.body'); ?>
      <?= $this->Form->control('_translations.vi_VN.about'); ?>

      <?= $this->Form->control('_translations.vi_VN.title2'); ?>
      <?= $this->Form->control('_translations.vi_VN.body2'); ?>
      <?= $this->Form->control('_translations.vi_VN.about2'); ?>

      <?= $this->Form->control('_translations.vi_VN.title3'); ?>
      <?= $this->Form->control('_translations.vi_VN.body3'); ?>
      <?= $this->Form->control('_translations.vi_VN.about3'); ?>

      <?= $this->Form->control('_translations.vi_VN.title4'); ?>
      <?= $this->Form->control('_translations.vi_VN.body4'); ?>
      <?= $this->Form->control('_translations.vi_VN.about4'); ?>
</fieldset>

      
   
  
  <?= $this->Form->button(__('Submit')) ?>
  <?= $this->Form->end() ?>
</div>