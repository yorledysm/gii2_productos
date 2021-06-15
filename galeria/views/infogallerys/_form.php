<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Infogallerys */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="infogallerys-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]) ; ?>

    <?= $form->field($model, 'name_image')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'image')-> fileInput()?>

    <?= $form->field($model, 'prud_id')->textInput() ?>

    <?= $form->field($model, 'status')->dropDownList([1 => 'Activo', 0 => 'Inactivo']) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
