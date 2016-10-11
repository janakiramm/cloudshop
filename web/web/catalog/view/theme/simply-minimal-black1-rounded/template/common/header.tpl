<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simply-minimal-black1-rounded/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/simply-minimal-black1-rounded/js/custom.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simply-minimal-black1-rounded/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simply-minimal-black1-rounded/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
	<script type="text/javascript">
	<!--
		$(document).ready(function() {
			<?php foreach ($stores as $store) { ?>
				$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
			<?php } ?>
		});
	//-->
	</script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<!-- Container Starts -->
	<div id="container">
	<!-- Header Links Starts -->
		<div id="header-links">
		<!-- Links Starts -->
			<div class="links">
				<ul class="clearfix">
					<li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
					<li>
						<a href="<?php echo $wishlist; ?>" id="wishlist_total"><?php echo $text_wishlist; ?></a>
					</li>
					<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
					<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
					<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
					<?php if (!$logged) { ?>
						<li class="spl"><?php echo $text_welcome; ?></li>
					<?php } else { ?>
						<li class="spl"><?php echo $text_logged; ?></li>
					<?php } ?>
				</ul>
			</div>
		<!-- Links Endss -->
		<!-- Search Starts -->
			<div id="search">
				<div class="button-search">GO</div>
				<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
			</div>
		<!-- Search Ends -->
		</div>
	<!-- Header Links Ends -->
	<!-- Header Starts -->
		<div id="header">
		<!-- Logo Starts -->
			<?php if ($logo) { ?>
				<div id="logo">
					<a href="<?php echo $home; ?>">
						<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
					</a>
				</div>
			<?php } ?>
		<!-- Logo Ends -->
		<!-- Languages Starts -->
			<?php echo $language; ?>
		<!-- Languages Ends -->
		<!-- Currencies Starts -->
			<?php echo $currency; ?>
		<!-- Currencies Starts -->
		<!-- Cart Starts -->
			<?php echo $cart; ?>
		<!-- Cart Ends -->				
		</div>
	<!-- Header Ends -->	
	<!-- Main Menu Starts -->
		<?php if ($categories) { ?>
			<div id="menu">
				<ul>
				<!-- Menu Links Starts -->
					<?php foreach ($categories as $category) { ?>
						<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
							<?php if ($category['children']) { ?>
							<!-- Dropdown Menu Links Starts -->
								<div>
									<?php for ($i = 0; $i < count($category['children']);) { ?>
										<ul>
											<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
											<?php for (; $i < $j; $i++) { ?>
												<?php if (isset($category['children'][$i])) { ?>
													<li>
														<a href="<?php echo $category['children'][$i]['href']; ?>">
															<?php echo $category['children'][$i]['name']; ?>
														</a>
													</li>
												<?php } ?>
											<?php } ?>
										</ul>
									<?php } ?>
								</div>
							<!-- Dropdown Menu Links Ends -->
							<?php } ?>						
						</li>
					<?php } ?>
				<!-- Menu Links Ends -->
				</ul>
			</div>
		<?php } ?>
	<!-- Main Menu Ends -->
	<!-- Notification Bar Starts Starts -->
		<div id="notification"></div>
	<!-- Notification Bar Starts Ends -->
	<!-- Container Inner Starts -->
		<div id="container-inner">	