<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "infogallerys".
 *
 * @property int $id
 * @property string $name_image
 * @property string $image
 * @property int $prud_id
 * @property int $status
 *
 * @property Infoproducts $prud
 */
class Infogallerys extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'infogallerys';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name_image', 'prud_id'], 'required'],
            [['prud_id', 'status'], 'integer'],
            [['name_image', 'image'], 'string', 'max' => 200],
            [['image' ], 'file', 'extensions'=> 'jpg, jpeg, npg'],
            [['prud_id'], 'exist', 'skipOnError' => true, 'targetClass' => Infoproducts::className(), 'targetAttribute' => ['prud_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name_image' => Yii::t('app', 'Name Image'),
            'image' => Yii::t('app', 'Image'),
            'prud_id' => Yii::t('app', 'Prud ID'),
            'status' => Yii::t('app', 'Status'),
        ];
    }

    /**
     * Gets query for [[Prud]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPrud()
    {
        return $this->hasOne(Infoproducts::className(), ['id' => 'prud_id']);
    }
}
