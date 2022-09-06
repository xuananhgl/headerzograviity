<nav class="large-3 medium-4 columns" id="actions-sidebar">
  <ul class="side-nav">
    <li class="heading"><?= __('Actions') ?></li>
    <li><?= $this->Html->link(__('List Headers'), ['action' => 'index']) ?></li>
  </ul>
</nav>
<div class="articles form large-9 medium-8 columns content">
  <?= $this->Form->create($header) ?>
  <fieldset>
    <legend><?= __('Add New header') ?></legend>
    <?php
     echo $this->Form->create($header);
     echo $this->Form->control('user_id', ['type' => 'hidden', 'value' => 1]);
     echo $this->Form->control('munber_style');
     echo $this->Form->control('my_img');
     echo $this->Form->control('my_color');
      echo $this->Form->control('my_background');
     echo $this->Form->control('bnt');
     echo $this->Form->control('bnt_video');
      echo $this->Form->control('my_title');
      echo $this->Form->input('french-title');
      echo $this->Form->input('spanish-title');
      echo $this->Form->input('vietnam-title');
      echo $this->Form->input('my_about');
      echo $this->Form->input('french');
      echo $this->Form->input('spanish');
      echo $this->Form->input('vietnam');
    ?>
  </fieldset>
  <?= $this->Form->button(__('Submit')) ?>
  <?= $this->Form->end() ?>
</div>