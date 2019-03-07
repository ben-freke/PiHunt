<?php

class LocationsController extends ControllerBase
{
    public function nextAction($code)
    {
        $this->setPageName('Next Location');
        $location = locations::findFirst(array(
            "conditions" => "code = :code:",
            "bind" => array("code" => $code)
        ));
       $this->view->setVar("gridRef", $location->gridref);
    }
}

