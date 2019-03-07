<?php

class LeadersController extends ControllerBase
{

    public function indexAction()
    {
        $this->setPageName("Leaders' Control Page");
        if (!$this->checkLogin()){
            header('Location: /leaders/login');
            die();
        }
        $this->view->setVar("ip", $_SERVER['SERVER_ADDR']);
        $this->view->setVar("name", $_SERVER['SERVER_NAME']);
    }

    public function loginAction()
    {
        $this->setPageName("Login: Leaders' Control Page");
        $request = new \Phalcon\Http\Request();
        if ($request->isPost())
        {

            if ($request->get("password") == "Le@d3rs2019!")
            {
                $sessionid = bin2hex(random_bytes(32));
                $this->session->set('sessionid', $sessionid);
                header('Location: /leaders');
            }
        }
    }

    public function addAction()
    {
        $this->setPageName("Add a new clue");
        if (!$this->checkLogin()){
            header('Location: /leaders/login');
            die();
        }


        $request = new \Phalcon\Http\Request();
        if ($request->isPost())
        {
            $clue = new clues();
            $clue->clue = $request->get("clue");
            if (!$clue->save()) die(var_dump($clue->getMessages()));
        }
    }

    public function resetAction($type)
    {
        if (!$this->checkLogin()){
            header('Location: /leaders/login');
            die();
        }

        if ($type == "clues")
        {
            $clues = clues::find();
            foreach ($clues as $clue) $clue->delete();
            $this->db->query("ALTER TABLE clues AUTO_INCREMENT = 1;");
            header('Location: /leaders');
            die();
        }

        if ($type == "locations")
        {
            $locations = locations::find();
            foreach ($locations as $location) $locations->delete();
            $this->db->query("ALTER TABLE locations AUTO_INCREMENT = 1;");
            header('Location: /leaders');
            die();
        }
    }


    public function setlocationAction()
    {
        $this->setPageName("Add a new location");
        if (!$this->checkLogin()){
            header('Location: /leaders/login');
            die();
        }
        $request = new \Phalcon\Http\Request();
        if ($request->isPost())
        {
           $location = new locations();
           $location->code = $request->get("code");
           $location->gridref = $request->get("gridref");
           $location->save();
        }
    }

}

