<?php

class PollController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
    	$this->view->questions = Questions::find();
    }

    public function showAction($question_id)
    {
        $this->view->poll = Questions::findFirst($question_id);
        //$this->view->options = Options::findByQuestionId($question_id);

        $this->view->options = Options::find(
                                            array(
                                                'question_id = ?0',
                                                'bind' => array($question_id),
                                                'order' => 'vote DESC'
                                            )
                                        );
    }

    public function voteAction($option_id)
    {
        $option = Options::findFirstByOptionId($option_id);
        $option->vote++;
        $option->save();

        $this->response->redirect('poll/show/' . $option->question_id);
    }    

    public function addAction($question_id)
    {
        $this->view->poll = Questions::findFirst($question_id);

        if ( $this->request->isPost() )
        {
            $option = new Options();
            $option->question_id = $question_id;
            $option->option_name = $this->request->getPost('name');
            $option->vote = 0;
            $option->save();

            return $this->dispatcher->forward(
                                            array(
                                                    'action' => 'show',
                                                    'params' => array($question_id)
                                                )
                                        );
        }
    }    

    public function createAction()
    {
        if ( $this->request->isPost() )
        {
            $question = new Questions();
            $question->question = $this->request->getPost('question');
            $question->save();

            $this->response->redirect('poll/index');
        }
    }    

}

