<!-- File: src/Template/Articles/index.ctp -->

<h1>Presses</h1>
<table>
    <?= $this->Html->link('Add presses new', ['action' => 'add']) ?>
    <tr>
        <th>style-header</th>
        <th></th>
    </tr>

    <?php foreach ($pours as $pour): ?>
    <tr>
        <td>
            <?= $this->Html->link($pour->title, ['action' => 'view', $pour->title]) ?>
        </td>
        <td>
            <?= $this->Html->link('View', ['action' => 'view', $pour->title]) ?>
            <?= $this->Html->link('Edit', ['action' => 'edit', $pour->title]) ?>
                        <?= $this->Form->postLink(
                        'Delete',
                        ['action' => 'delete', $pour->id],
                        ['confirm' => 'Are you sure?'])
                    ?>
            
        </td>
    </tr>
    <?php endforeach; ?>
</table>