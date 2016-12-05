<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "test_document".
 *
 * @property integer $id
 * @property string $docu_date
 * @property string $docu_name
 * @property integer $document_type
 * @property integer $test_project_id
 */
class TestDocument extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'test_document';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['docu_date', 'docu_name', 'document_type', 'test_project_id'], 'required'],
            [['docu_date'], 'safe'],
            [['document_type', 'test_project_id'], 'integer'],
            [['docu_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'docu_date' => 'Docu Date',
            'docu_name' => 'Docu Name',
            'document_type' => 'Document Type',
            'test_project_id' => 'Test Project ID',
        ];
    }

    public function getType()
    {
        return $this->hasOne(DocumentType::className(), ['id' => 'document_type']);
    }
}
