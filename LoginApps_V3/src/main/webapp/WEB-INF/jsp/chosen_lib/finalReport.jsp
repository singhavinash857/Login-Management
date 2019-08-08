<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Chosen: A jQuery Plugin by Harvest to Tame Unwieldy
	Select Boxes</title>
<spring:url value="docsupport/style.css" var="styleCssURL"></spring:url>
<spring:url value="docsupport/prism.css" var="prismURL"></spring:url>
<spring:url value="chosen.css" var="chosenCssURL"></spring:url>


<link rel="stylesheet" href="/${styleCssURL}">
<link rel="stylesheet" href="/${prismURL}">
<link rel="stylesheet" href="/${chosenCssURL}">
<meta http-equiv="Content-Security-Policy"
	content="default-src &apos;self&apos;; script-src &apos;self&apos; https://ajax.googleapis.com; style-src &apos;self&apos;; img-src &apos;self&apos; data:">
</head>
<body>
	<form>
		<div id="container">
			<div id="content">
				<header>
				<h1>
					Chosen <small>(<span id="latest-version">v1.8.7</span>)
					</small>
				</h1>
				</header>
				<h2>
					<a name="selected-and-disabled-support" class="anchor"
						href="#selected-and-disabled-support">Selected and Disabled
						Support</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>Chosen automatically highlights selected options and removes
						disabled options.</p>
					<div>
						<em>Single Select</em> <select
							data-placeholder="Your Favorite Type of Bear"
							class="chosen-select" tabindex="7">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option selected>Sloth Bear</option>
							<option disabled>Sun Bear</option>
							<option>Polar Bear</option>
							<option disabled>Spectacled Bear</option>
						</select>
					</div>
					<div>
						<em>Multiple Select</em> <select
							data-placeholder="Your Favorite Types of Bear" multiple
							class="chosen-select" tabindex="8">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option selected>Sloth Bear</option>
							<option disabled>Sun Bear</option>
							<option selected>Polar Bear</option>
							<option disabled>Spectacled Bear</option>
						</select>
					</div>
				</div>

				<h2>
					<a name="hide-search-on-single-select" class="anchor"
						href="#hide-search-on-single-select">Hide Search on Single
						Select</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>
						The
						<code>disable_search_threshold</code>
						option can be specified to hide the search input on single selects
						if there are <i>n</i> or fewer options.
					</p>
					<pre>
						<code class="language-javascript">$(".chosen-select").chosen({disable_search_threshold: 10});</code>
					</pre>
					<p></p>
					<div>
						<select data-placeholder="Your Favorite Type of Bear"
							class="chosen-select-no-single" tabindex="9">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option selected disabled>Sloth Bear</option>
							<option disabled>Sun Bear</option>
							<option selected disabled>Paddington Bear</option>
							<option selected>Polar Bear</option>
							<option disabled>Spectacled Bear</option>
						</select>
					</div>
				</div>

				<h2>
					<a name="default-text-support" class="anchor"
						href="#default-text-support">Default Text Support</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>Chosen automatically sets the default field text ("Choose a
						country...") by reading the select element's data-placeholder
						value. If no data-placeholder value is present, it will default to
						"Select an Option" or "Select Some Options" depending on whether
						the select is single or multiple. You can change these elements in
						the plugin js file as you see fit.</p>
					<pre>
						<code class="language-markup">&lt;select <strong>data-placeholder="Choose a country..."</strong> multiple class="chosen-select"&gt;</code>
					</pre>
					<p>
						<strong>Note:</strong> on single selects, the first element is
						assumed to be selected by the browser. To take advantage of the
						default text support, you will need to include a blank option as
						the first element of your select list.
					</p>
				</div>

				<h2>
					<a name="no-results-text-support" class="anchor"
						href="#no-results-text-support">No Results Text Support</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>Setting the "No results" search text is as easy as passing
						an option when you create Chosen:</p>
					<pre>
						<code class="language-javascript"> $(".chosen-select").chosen({no_results_text: "Oops, nothing found!"}); </code>
					</pre>
					<p></p>
					<div>
						<em>Single Select</em> <select
							data-placeholder="Type &apos;C&apos; to view"
							class="chosen-select-no-results" tabindex="10">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option>Sloth Bear</option>
							<option>Sun Bear</option>
							<option>Polar Bear</option>
							<option>Spectacled Bear</option>
						</select>
					</div>
					<div>
						<em>Multiple Select</em> <select
							data-placeholder="Type &apos;C&apos; to view" multiple
							class="chosen-select-no-results" tabindex="11">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option>Sloth Bear</option>
							<option>Sun Bear</option>
							<option>Polar Bear</option>
							<option>Spectacled Bear</option>
						</select>
					</div>
				</div>

				<h2>
					<a name="limit-selected-options-in-multiselect" class="anchor"
						href="#limit-selected-options-in-multiselect">Limit Selected
						Options in Multiselect</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>You can easily limit how many options the user can select:</p>
					<pre>
						<code class="language-javascript">$(".chosen-select").chosen({max_selected_options: 5});</code>
					</pre>
					<p>
						If you try to select another option with limit reached
						<code class="language-javascript">chosen:maxselected</code>
						event is triggered:
					</p>
					<pre>
						<code class="language-javascript"> $(".chosen-select").bind("chosen:maxselected", function () { ... }); </code>
					</pre>
				</div>

				<h2>
					<a name="allow-deselect-on-single-selects" class="anchor"
						href="#allow-deselect-on-single-selects">Allow Deselect on
						Single Selects</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>
						When a single select box isn't a required field, you can set
						<code class="language-javascript">allow_single_deselect:
							true</code>
						and Chosen will add a UI element for option deselection. This will
						only work if the first option has blank text.
					</p>
					<div class="side-by-side clearfix">
						<select data-placeholder="Your Favorite Type of Bear"
							class="chosen-select-deselect" tabindex="12">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option selected>Sloth Bear</option>
							<option>Sun Bear</option>
							<option>Polar Bear</option>
							<option>Spectacled Bear</option>
						</select>
					</div>
				</div>

				<h2>
					<a name="right-to-left-support" class="anchor"
						href="#right-to-left-support">Right-to-Left Support</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>
						You can set right-to-left text by setting
						<code class="language-javascript">rtl: true</code>
					</p>
					<pre>
						<code class="language-javascript"> $(".chosen-select").chosen({rtl: true}); </code>
					</pre>

					<div>
						<em>Single Right-to-Left Select</em> <select
							data-placeholder="Your Favorite Type of Bear"
							class="chosen-select-rtl" tabindex="13">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option selected>Sloth Bear</option>
							<option>Polar Bear</option>
						</select>
					</div>
					<div>
						<em>Multiple Right-to-Left Select</em> <select
							data-placeholder="Your Favorite Types of Bear" multiple
							class="chosen-select-rtl" tabindex="14">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option selected>Sloth Bear</option>
							<option selected>Polar Bear</option>
						</select>
					</div>
				</div>

				<h2>
					<a name="change-update-events" class="anchor"
						href="#change-update-events">Observing, Updating, and
						Destroying Chosen</a>
				</h2>
				<div class="side-by-side clearfix">
					<ul>
						<li>
							<h3>Observing Form Field Changes</h3>
							<p>When working with form fields, you often want to perform
								some behavior after a value has been selected or deselected.
								Whenever a user selects a field in Chosen, it triggers a
								"change" event on the original form field. That lets you do
								something like this:</p> <pre>
								<code class="language-javascript">$("#form_field").chosen().change( &hellip; );</code>
							</pre>
						</li>
						<li>
							<h3>Updating Chosen Dynamically</h3>
							<p>If you need to update the options in your select field and
								want Chosen to pick up the changes, you'll need to trigger the
								"chosen:updated" event on the field. Chosen will re-build itself
								based on the updated content.</p> <pre>
								<code class="language-javascript">$("#form_field").trigger("chosen:updated");</code>
							</pre>
						</li>
						<li>
							<h3>Destroying Chosen</h3>
							<p>To destroy Chosen and revert back to the native select:</p> <pre>
								<code class="language-javascript">$("#form_field").chosen("destroy");</code>
							</pre>
						</li>
					</ul>
				</div>

				<h2>
					<a name="custom-width-support" class="anchor"
						href="#custom-width-support">Custom Width Support</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>Using a custom width with Chosen is as easy as passing an
						option when you create Chosen:</p>
					<pre>
						<code class="language-javascript"> $(".chosen-select").chosen({width: "95%"}); </code>
					</pre>
					<div>
						<em>Single Select</em> <select
							data-placeholder="Your Favorite Types of Bear"
							class="chosen-select-width" tabindex="15">
							<option value=""></option>
							<option selected>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option>Sloth Bear</option>
							<option>Sun Bear</option>
							<option>Polar Bear</option>
							<option>Spectacled Bear</option>
						</select>
					</div>
					<div>
						<em>Multiple Select</em> <select
							data-placeholder="Your Favorite Types of Bear" multiple
							class="chosen-select-width" tabindex="16">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option selected>Giant Panda</option>
							<option>Sloth Bear</option>
							<option>Sun Bear</option>
							<option>Polar Bear</option>
							<option>Spectacled Bear</option>
						</select>
					</div>
				</div>

				<h2>
					<a name="labels-work-too" class="anchor" href="#labels-work-too">Labels
						work, too</a>
				</h2>
				<div class="side-by-side clearfix">
					<p>Use labels just like you would a standard select</p>
					<p></p>
					<div>
						<em><label for="single-label-example">Click to
								Highlight Single Select</label></em> <select
							data-placeholder="Your Favorite Types of Bear"
							class="chosen-select" tabindex="17" id="single-label-example">
							<option value=""></option>
							<option selected>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option>Giant Panda</option>
							<option>Sloth Bear</option>
							<option>Sun Bear</option>
							<option>Polar Bear</option>
							<option>Spectacled Bear</option>
						</select>
					</div>
					<div>
						<em><label for="multiple-label-example">Click to
								Highlight Multiple Select</label></em> <select
							data-placeholder="Your Favorite Types of Bear" multiple
							class="chosen-select" tabindex="18" id="multiple-label-example">
							<option value=""></option>
							<option>American Black Bear</option>
							<option>Asiatic Black Bear</option>
							<option>Brown Bear</option>
							<option selected>Giant Panda</option>
							<option>Sloth Bear</option>
							<option>Sun Bear</option>
							<option>Polar Bear</option>
							<option>Spectacled Bear</option>
						</select>
					</div>
				</div>

				<h2>
					<a name="setup" class="anchor" href="#setup">Setup</a>
				</h2>
				<p>Using Chosen is easy as can be.</p>
				<ol>
					<li><a href="https://github.com/harvesthq/chosen/releases">Download</a>
						the plugin and copy the chosen files to your app.</li>
					<li>Activate the plugin on the select boxes of your choice: <code
							class="language-javascript">$(".chosen-select").chosen()</code></li>
					<li><a
						href="http://www.youtube.com/watch?feature=player_detailpage&amp;v=UkSPUDpe0U8#t=11s">Disco</a>.</li>
				</ol>

				<h2>
					<a name="faqs" class="anchor" href="#faqs">FAQs</a>
				</h2>
				<ul class="faqs">
					<li>
						<h3>Do you have all the available options documented
							somewhere?</h3>
						<p>
							Yes! You can find them on <a href="options.html">the options
								page</a>.
						</p>
					</li>
					<li>
						<h3>Something doesn't work. Can you fix it?</h3>
						<p>
							Yes! Please report all issues using the <a
								href="http://github.com/harvesthq/chosen/issues">GitHub
								issue tracking tool</a>. Please include the plugin version (jQuery
							or Prototype), browser and OS. The more information provided, the
							easier it is to fix a problem.
						</p>
					</li>
					<li>
						<h3>What browsers are supported?</h3>
						<p>
							All modern desktop browsers are supported (Firefox, Chrome,
							Safari and IE9). Legacy support for IE8 is also enabled. Chosen
							is disabled on iPhone, iPod Touch, and Android mobile devices (<a
								href="https://github.com/harvesthq/chosen/pull/1388">more
								information</a>).
						</p>
					</li>
					<li>
						<h3>Didn't there used to be a Prototype version of Chosen?</h3>
						<p>
							<a href="index.proto.html">There still is!</a>
						</p>
					</li>
				</ul>

				<h2>
					<a name="credits" class="anchor" href="#credits">Credits</a>
				</h2>

				<ul class="credits">
					<li>Concept and development by <a
						href="http://patrickfiller.com">Patrick Filler</a> for <a
						href="https://getharvest.com">Harvest</a>.
					</li>
					<li>Design and CSS by <a href="http://matthewlettini.com">Matthew
							Lettini</a>.
					</li>
					<li>Repository maintained by <a
						href="https://github.com/pfiller">@pfiller</a>, <a
						href="https://github.com/kenearley">@kenearley</a>, <a
						href="https://github.com/stof">@stof</a>, <a
						href="https://github.com/koenpunt">@koenpunt</a>, and <a
						href="https://github.com/tjschuck">@tjschuck</a>.
					</li>
					<li>Chosen includes <a
						href="https://github.com/harvesthq/chosen/contributors">contributions
							by many fine folks</a>.
					</li>
				</ul>

				<footer> &copy; 2011&ndash;2016 <a
					href="http://www.getharvest.com/">Harvest</a>. Chosen is licensed
				under the <a
					href="https://github.com/harvesthq/chosen/blob/master/LICENSE.md">MIT
					license</a>. </footer>

			</div>
		</div>

		<spring:url value="chosen_lib/docsupport/jquery-3.2.1.min.js"
			var="bootstrapCssURL"></spring:url>
		<spring:url value="chosen_lib/chosen.jquery.js" var="chosenJqueryURL"></spring:url>
		<spring:url value="chosen_lib/docsupport/prism.js" var="prismURL"></spring:url>
		<spring:url value="chosen_lib/docsupport/init.js" var="initURL"></spring:url>

		<script src="/${bootstrapCssURL}" type="text/javascript"></script>
		<script src="/${chosenJqueryURL}" type="text/javascript"></script>
		<script src="/${prismURL}" type="text/javascript" charset="utf-8"></script>
		<script src="/${initURL}" type="text/javascript" charset="utf-8"></script>
	</form>
</body>
</html>