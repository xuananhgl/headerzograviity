<nav class="large-3 medium-4 columns" id="actions-sidebar">
  <ul class="side-nav">
    <li class="heading"><?= __('Actions') ?></li>
    <li><?= $this->Html->link(__('List pours'), ['action' => 'index']) ?></li>
  </ul>
</nav>
<div class="articles form large-9 medium-8 columns content">
  <?= $this->Form->create($pour) ?>
  <fieldset>
    <legend><?= __('Add New pours') ?></legend>
    <?php
     echo $this->Form->create($pour);
     echo $this->Form->control('user_id', ['type' => 'hidden', 'value' => 1]);
     echo $this->Form->control('title');
     echo $this->Form->control('logo');
     echo $this->Form->control('Notre_engagement');
      echo $this->Form->control('about_notre');
     echo $this->Form->control('note');
     echo $this->Form->control('link');
      echo $this->Form->control('title2');
      echo $this->Form->input('about2');
      echo $this->Form->input('bnt');
      echo $this->Form->input('about');
      echo $this->Form->input('french');
      echo $this->Form->input('spanish');
      echo $this->Form->input('vietnam');
    ?>
  </fieldset>
  <?= $this->Form->button(__('Submit')) ?>
  <?= $this->Form->end() ?>
</div>