<?php
/**
 * File containing the ezpRestProviderInterface interface.
 *
 * @copyright Copyright (C) 1999-2010 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU GPLv2
 *
 */

interface ezpRestProviderInterface
{
    /**
     * Returns registered versioned routs for provider
     *
     * @abstract
     * @return array
     */
    public function getRouts();

    /**
     * Returns associated with provider view controller
     *
     * @abstract
     * @return ezpRestViewController
     */
    public function getViewController();
}
