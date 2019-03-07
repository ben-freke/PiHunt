<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {

        $clues = clues::find();
        $this->view->setVar('clues', $clues);
        $this->setPageName("PiHunt");
    }

}

