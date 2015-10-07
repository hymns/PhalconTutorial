<?php

class Questions extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $question_id;

    /**
     *
     * @var string
     */
    public $question;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'questions';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Questions[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Questions
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
