<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_search
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<div class="search">
    <form action="<?php echo JRoute::_('index.php');?>" method="post" class="input-append">
		<input name="searchword" id="mod-search-searchword" type="text" placeholder="<?php echo $text; ?>" />
		<input type="hidden" name="task" value="search" />
    	<input type="hidden" name="option" value="com_search" />
    	<input type="hidden" name="Itemid" value="<?php echo $mitemid; ?>" />
    </form>
</div>
