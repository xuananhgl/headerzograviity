<nav class="large-3 medium-4 columns" id="actions-sidebar">
  <ul class="side-nav">
    <li class="heading"><?= __('Actions') ?></li>
    <li><?= $this->Html->link(__('List Headers'), ['action' => 'index']) ?></li>
  </ul>
</nav>
<div class="articles form large-9 medium-8 columns content">
  <?= $this->Form->create($pre) ?>
  <fieldset>
    <legend><?= __('Add New Fresse') ?></legend>
    <?php
     echo $this->Form->create($pre);
     echo $this->Form->control('user_id', ['type' => 'hidden', 'value' => 1]);
     echo $this->Form->control('title');
     echo $this->Form->control('logo');
     echo $this->Form->control('author');
      echo $this->Form->control('dress');
     echo $this->Form->control('link');
    //  echo $this->Form->control('');
    //   echo $this->Form->control('my_title');
    //   echo $this->Form->input('french-title');
    //   echo $this->Form->input('spanish-title');
      echo $this->Form->input('about');
      echo $this->Form->input('french');
      echo $this->Form->input('spanish');
      echo $this->Form->input('vietnam');
    ?>
  </fieldset>
  <?= $this->Form->button(__('Submit')) ?>
  <?= $this->Form->end() ?>
</div>