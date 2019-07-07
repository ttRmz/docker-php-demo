<?php

use PHPUnit\Framework\TestCase;

require "./config.php";
require "./functions.php";

class StackTest extends TestCase
{
    public function testVersion()
    {
        $this->expectOutputString(config('version'));
        $result =  siteVersion();
    }
    public function testName()
    {
        $this->expectOutputString(config('name'));
        $result = siteName();
    }
}
