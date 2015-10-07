<?php

class Options extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $option_id;

    /**
     *
     * @var integer
     */
    public $question_id;

    /**
     *
     * @var string
     */
    public $option_name;

    /**
     *
     * @var integer
     */
    public $vote;

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'options';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Options[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Options
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
