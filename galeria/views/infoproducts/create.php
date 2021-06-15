<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Infoproducts */

$this->title = Yii::t('app', 'Create Infoproducts');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Infoproducts'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="infoproducts-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
