<?php
/**
 * @version		$Id: category.php 1812 2013-01-14 18:45:06Z lefteris.kavadas $
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.net
 * @copyright	Copyright (c) 2006 - 2013 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die;

?>

<!-- Start K2 Category Layout -->
<div id="k2Container" class="itemListView<?php if($this->params->get('pageclass_sfx')) echo ' '.$this->params->get('pageclass_sfx'); ?>">

	<?php if($this->params->get('show_page_title')): ?>
	<!-- Page title -->
	<div class="componentheading<?php echo $this->params->get('pageclass_sfx')?>">
		<?php echo $this->escape($this->params->get('page_title')); ?>
	</div>
	<?php endif; ?>

	<?php if($this->params->get('catFeedIcon')): ?>
	<!-- RSS feed icon -->
	<div class="k2FeedIcon">
		<a href="<?php echo $this->feed; ?>" title="<?php echo JText::_('K2_SUBSCRIBE_TO_THIS_RSS_FEED'); ?>">
			<span><?php echo JText::_('K2_SUBSCRIBE_TO_THIS_RSS_FEED'); ?></span>
		</a>
		<div class="clr"></div>
	</div>
	<?php endif; ?>

	<?php if(isset($this->category) || ( $this->params->get('subCategories') && isset($this->subCategories) && count($this->subCategories) )): ?>
	<!-- Blocks for current category and subcategories -->
	<div class="itemListCategoriesBlock">

		<?php if(isset($this->category) && ( $this->params->get('catImage') || $this->params->get('catTitle') || $this->params->get('catDescription') || $this->category->event->K2CategoryDisplay )): ?>
		<!-- Category block -->
		<div class="itemListCategory">

			<?php if(isset($this->addLink)): ?>
			<!-- Item add link -->
			<span class="catItemAddLink">
				<a class="modal" rel="{handler:'iframe',size:{x:990,y:650}}" href="<?php echo $this->addLink; ?>">
					<?php echo JText::_('K2_ADD_A_NEW_ITEM_IN_THIS_CATEGORY'); ?>
				</a>
			</span>
			<?php endif; ?>

			<?php if($this->params->get('catImage') && $this->category->image): ?>
			<!-- Category image -->
			<img alt="<?php echo K2HelperUtilities::cleanHtml($this->category->name); ?>" src="<?php echo $this->category->image; ?>" style="width:<?php echo $this->params->get('catImageWidth'); ?>px; height:auto;" />
			<?php endif; ?>

			<?php if($this->params->get('catTitle')): ?>
			<!-- Category title -->
			<h2><?php echo $this->category->name; ?><?php if($this->params->get('catTitleItemCounter')) echo ' ('.$this->pagination->total.')'; ?></h2>
			<?php endif; ?>

			<?php if($this->params->get('catDescription')): ?>
			<!-- Category description -->
			<p><?php echo $this->category->description; ?></p>
			<?php endif; ?>

			<!-- K2 Plugins: K2CategoryDisplay -->
			<?php echo $this->category->event->K2CategoryDisplay; ?>

			<div class="clr"></div>
		</div>
		<?php endif; ?>

		<?php if($this->params->get('subCategories') && isset($this->subCategories) && count($this->subCategories)): ?>
		<?php
			$i=1;
			$j=1;
			$subCatColumns = $this->params->get('subCatColumns');
		?>	
		<!-- Subcategories -->
		<div class="itemListSubCategories">
			<!--<h2><?php echo JText::_('K2_CHILDREN_CATEGORIES'); ?></h2>-->
			<div></div><!--Placeholder-->

			<?php foreach($this->subCategories as $key=>$subCategory): ?>

			<?php
			// Define a CSS class for the last container on each row
			if( (($key+1)%($subCatColumns)==0))
				$lastContainer= ' subCategoryContainerLast';
			else
				$lastContainer='';
			?>
			
			<?php
				if($i==1) //Start row
					echo '<div class="row-fluid">';
			?>

			<div class="subCategoryContainer<?php echo $lastContainer; ?> span<?php echo ($subCatColumns!=0)? round(12/$subCatColumns) : '12'; ?>">
				<div class="subCategory sp-box-border clearfix">
					<div class="media">
					
						<?php if($this->params->get('subCatImage') && $subCategory->image): ?>
							<!-- Subcategory image -->
							<a class="subCategoryImage pull-left" href="<?php echo $subCategory->link; ?>">
								<img alt="<?php echo K2HelperUtilities::cleanHtml($subCategory->name); ?>" src="<?php echo $subCategory->image; ?>" />
							</a>
						<?php endif; ?>
						
						<div class="media-body">
							<?php if($this->params->get('subCatTitle')): ?>
							<!-- Subcategory title -->
							<h3 class="mt-0">
								<a href="<?php echo $subCategory->link; ?>">
									<?php echo $subCategory->name; ?><?php if($this->params->get('subCatTitleItemCounter')) echo ' ('.$subCategory->numOfItems.')'; ?>
								</a>
							</h3>
							<?php endif; ?>

							<?php if($this->params->get('subCatDescription')): ?>
							<!-- Subcategory description -->
							<div><?php echo $subCategory->description; ?></div>
							<?php endif; ?>

							<div class="clr"></div>
							<!-- Subcategory more... -->
							<a class="readmore" href="<?php echo $subCategory->link; ?>">
								<?php echo JText::_('K2_VIEW_ITEMS'); ?>
							</a>
						</div>
					</div>
					<!--End Media-->
				</div>
			</div>
			<?php if(($key+1)%($subCatColumns)==0): ?>
			<div class="clr"></div>
			<?php endif; ?>
			
			
			<?php
				if(($i == $subCatColumns) || $lastContainer):
					echo '</div>';//End Row
					$i=0;
				endif;
				$i++;
				$j++;
			?>
			
			<?php endforeach; ?>

			<div class="clr"></div>
		</div>
		<?php endif; ?>

	</div>
	<?php endif; ?>



	<?php if((isset($this->leading) || isset($this->primary) || isset($this->secondary) || isset($this->links)) && (count($this->leading) || count($this->primary) || count($this->secondary) || count($this->links))): ?>
	<!-- Item list -->
	<div class="itemList">
	
		<?php //Start Leading Items ?>
		<?php 
			$i=1;
			$j=1;
			$leading_columns = $this->params->get('num_leading_columns'); /*Leading Count*/
		?>

		<?php if(isset($this->leading) && count($this->leading)): ?>
		<!-- Leading items -->
		<div id="itemListLeading">
			<?php foreach($this->leading as $key=>$item): ?>
			
			<?php
				if( (($key+1)%($leading_columns)==0) || $j== count($this->leading))
					$lastContainer= true;
				else
					$lastContainer= false;
			?>
			
			<?php
				if($i==1) //Start row
					echo '<div class="row-fluid">';
			?>
			
			<div class="itemContainer span<?php echo ($leading_columns!=0)? round(12/$leading_columns) : '12'; ?>">
				<?php
					$this->item=$item;
					echo $this->loadTemplate('item');
				?>
			</div>
			
			<?php
				if(($i == $leading_columns) || $lastContainer):
					echo '</div>';//End Row
					$i=0;
				endif;
				$i++;
				$j++;
			?>
			
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
		<?php //End Leading Items ?>
		
		<?php //Start Primary Items ?>
		<?php 
			$i=1;
			$j=1;
			$primary_columns = $this->params->get('num_primary_columns'); /*Primary Count*/
		?>

		<?php if(isset($this->primary) && count($this->primary)): ?>
		<!-- Primary items -->
		<div id="itemListPrimary">
			<?php foreach($this->primary as $key=>$item): ?>
			
			<?php
				if( (($key+1)%($primary_columns)==0) || $j== count($this->primary))
					$lastContainer= true;
				else
					$lastContainer= false;
			?>
			
			<?php
				if($i==1) //Start row
					echo '<div class="row-fluid">';
			?>
			
			<div class="itemContainer span<?php echo ($primary_columns!=0)? round(12/$primary_columns) : '12'; ?>">
				<?php
					$this->item=$item;
					echo $this->loadTemplate('item');
				?>
			</div>
			
			<?php
				if(($i == $primary_columns) || $lastContainer):
					echo '</div>';//End Row
					$i=0;
				endif;
				$i++;
				$j++;
			?>
			
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
		<?php //End Primary Items ?>
		
		
		<?php //Start Secondary Items ?>
		<?php 
			$i=1;
			$j=1;
			$secondary_columns = $this->params->get('num_secondary_columns'); /*Secondary Count*/
		?>		

		<?php if(isset($this->secondary) && count($this->secondary)): ?>
		<!-- Secondary items -->
		<div id="itemListSecondary">
			<?php foreach($this->secondary as $key=>$item): ?>
			
			<?php
				if( (($key+1)%($secondary_columns)==0) || $j== count($this->secondary))
					$lastContainer= true;
				else
					$lastContainer= false;
			?>
			
			<?php
				if($i==1) //Start row
					echo '<div class="row-fluid">';
			?>
			
			<div class="itemContainer span<?php echo ($secondary_columns!=0)? round(12/$secondary_columns) : '12'; ?>">
				<?php
					$this->item=$item;
					echo $this->loadTemplate('item');
				?>
			</div>
			
			<?php
				if(($i == $secondary_columns) || $lastContainer):
					echo '</div>';//End Row
					$i=0;
				endif;
				$i++;
				$j++;
			?>
			
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
		<?php //End Secondary Items ?>

		<?php if(isset($this->links) && count($this->links)): ?>
		<!-- Link items -->
		<div id="itemListLinks">
			<h4><?php echo JText::_('K2_MORE'); ?></h4>
			<?php foreach($this->links as $key=>$item): ?>

			<?php
			// Define a CSS class for the last container on each row
			if( (($key+1)%($this->params->get('num_links_columns'))==0) || count($this->links)<$this->params->get('num_links_columns') )
				$lastContainer= ' itemContainerLast';
			else
				$lastContainer='';
			?>

			<div class="itemContainer<?php echo $lastContainer; ?>"<?php echo (count($this->links)==1) ? '' : ' style="width:'.number_format(100/$this->params->get('num_links_columns'), 1).'%;"'; ?>>
				<?php
					// Load category_item_links.php by default
					$this->item=$item;
					echo $this->loadTemplate('item_links');
				?>
			</div>
			<?php if(($key+1)%($this->params->get('num_links_columns'))==0): ?>
			<div class="clr"></div>
			<?php endif; ?>
			<?php endforeach; ?>
			<div class="clr"></div>
		</div>
		<?php endif; ?>

	</div>

	<!-- Pagination -->
	<?php if(count($this->pagination->getPagesLinks())): ?>
	<div class="pagination">
		<?php if($this->params->get('catPagination')) echo $this->pagination->getPagesLinks(); ?>
	</div>
	<?php endif; ?>

	<?php endif; ?>
</div>
<!-- End K2 Category Layout -->