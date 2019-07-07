<?php

use PHPUnit\Framework\TestCase;

require "./config.php";
require "./functions.php";

class StackTest extends TestCase
{
    public function testSiteVersion()
    {
        $this->expectOutputString(config('version'));
        $result =  siteVersion();
    }
    public function testName()
    {
        $this->expectOutputString(config('name'));
        $result = siteName();
    }
    public function testPHPVersion() 
    {
        $this->assertContains(config('php_version'), phpversion());
    }
}