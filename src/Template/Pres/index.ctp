<!-- File: src/Template/Articles/index.ctp -->

<h1>Presses</h1>
<table>
    <?= $this->Html->link('Add presses new', ['action' => 'add']) ?>
    <tr>
        <th>style-header</th>
        <th></th>
    </tr>

    <?php foreach ($pres as $pre): ?>
    <tr>
        <td>
            <?= $this->Html->link($pre->about, ['action' => 'view', $pre->title]) ?>
        </td>
        <td>
            <?= $this->Html->link('View', ['action' => 'view', $pre->title]) ?>
            <?= $this->Html->link('Edit', ['action' => 'edit', $pre->title]) ?>
                        <?= $this->Form->postLink(
                        'Delete',
                        ['action' => 'delete', $pre->id],
                        ['confirm' => 'Are you sure?'])
                    ?>
            
        </td>
    </tr>
    <?php endforeach; ?>
</table>