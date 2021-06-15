<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "infoproducts".
 *
 * @property int $id
 * @property string $name_person
 * @property string $category
 * @property string $date
 * @property int $status
 *
 * @property Infogallerys[] $infogallerys
 */
class Infoproducts extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'infoproducts';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name_person', 'category'], 'required'],
            [['date'], 'safe'],
            [['status'], 'integer'],
            [['name_person', 'category'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name_person' => Yii::t('app', 'Name Person'),
            'category' => Yii::t('app', 'Category'),
            'date' => Yii::t('app', 'Date'),
            'status' => Yii::t('app', 'Status'),
        ];
    }

    /**
     * Gets query for [[Infogallerys]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getInfogallerys()
    {
        return $this->hasMany(Infogallerys::className(), ['prud_id' => 'id']);
    }
}
