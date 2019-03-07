<?php

class ControllerBase extends \Phalcon\Mvc\Controller
{

    public function initialize()
    {
        $user = $this->checkLogin();
        if ($user) $this->view->user = $user;
        if ($this->session->has('errors'))
        {
            $this->view->errors = $this->session->get('errors');
            $this->session->remove('errors');
        }
    }

    public function verifyForm($challangeCode)
    {
        $url = 'https://www.google.com/recaptcha/api/siteverify';
        $data = array('secret' => '6Lc3o3YUAAAAACGK8kVZ9pTWzw0zRVImxyZG_GwA', 'response' => $challangeCode);
        $options = array(
            'http' => array(
                'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
                'method'  => 'POST',
                'content' => http_build_query($data)
            )
        );
        $context  = stream_context_create($options);
        $result = file_get_contents($url, false, $context);
        if ($result === FALSE) return false;
        $result = json_decode($result);
        //var_dump($result);
        if ($result->success == 'true') return true;
        else return false;
    }


    /**
     * Input checking functions
     */

    /**
     * @param $email
     * @return bool
     *
     *
     */

    public function checkEmail($email)
    {
        if (!preg_match('/([\w\-]+\@[\w\-]+\.[\w\-]+)/', $email)) return false;
        else return true;
    }

    public function checkPlainInput($input)
    {
        if (strlen($input) == 0) return false;
        else {
            if (preg_match('/^[\w]+$/', $input)) return true;
            else return false;
        }
    }

    public function checkInput($input)
    {
        if (strlen($input) == 0) return false;
        else return true;
    }

    public function checkPassword($password)
    {
        $uppercase = preg_match('@[A-Z]@', $password);
        $lowercase = preg_match('@[a-z]@', $password);
        $number    = preg_match('@[0-9]@', $password);

        if(!$uppercase || !$lowercase || !$number || strlen($password) < 8) return false;
        else return true;
    }

    public function throwError($errors)
    {
        $this->session->set('errors', $errors);
        header("Refresh:0");
        die();
    }

    public function createUserSession($user)
    {
        $session = new sessions();
        $session->userid = $user->id;
        $session->sessionid = bin2hex(random_bytes(32));
        if (!$session->save()) return false;
        $this->session->set('sessionid', $session->sessionid);
        return true;
    }

    public function checkLogin()
    {
        if ($this->session->has('sessionid')) return true;
        else return false;
    }

    public function setPageName($name)
    {
        $this->view->setVar('pagename', $name);
    }

    public function setBackground($background)
    {
        $this->view->background = $background;
    }

}