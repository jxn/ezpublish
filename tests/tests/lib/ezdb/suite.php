<?php
/**
 * File containing the eZDBTestSuite class
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 * @package tests
 */

class eZDBTestSuite extends ezpDatabaseTestSuite
{
    public function __construct()
    {
        parent::__construct();
        $this->setName( "eZDB Test Suite" );

        $this->addTestSuite( 'eZPostgreSQLDBTest' );
        $this->addTestSuite( 'eZDBInterfaceTest' );
        $this->addTestSuite( 'eZMySQLiDBFKTest' );
        $this->addTestSuite( 'eZMySQLCharsetTest' );
    }

    public static function suite()
    {
        return new self();
    }
}

?>
