<?php
/**
 * @package		OpenCart
 * @author		Daniel Kerr
 * @copyright	Copyright (c) 2005 - 2017, OpenCart, Ltd. (https://www.opencart.com/)
 * @license		https://opensource.org/licenses/GPL-3.0
 * @link		https://www.opencart.com
*/

/**
* Document class
*/
class Document {
	private $title;
	private $description;
	private $keywords;
	private $OGTitle;
	private $OGDescription;
	private $OGImage;
	private $OGUrl;
	private $links = array();
	private $styles = array();
	private $scripts = array();

	/**
     * 
     *
     * @param	string	$title
     */
	public function setTitle($title) {
		$this->title = $title;
	}

	/**
     * 
	 * 
	 * @return	string
     */
	public function getTitle() {
		return $this->title;
	}

	/**
     * 
     *
     * @param	string	$description
     */
	public function setDescription($description) {
		$this->description = $description;
	}

	/**
     * 
     *
     * @param	string	$OGTitle
     */
	public function setOGTitle($title) {
		$this->OGtitle = $title;
	}

	/**
     * 
     *
     * @param	string	$OGImage
     */
	public function setOGImage($image) {
		$this->OGImage = $image;
	}

	/**
     * 
     *
     * @param	string	$OGDescription
     */
	public function setOGDescription($description) {
		$this->OGDescription = $description;
	}

	/**
     * 
     *
     * @param	string	$OGUrl
     */
	public function setOGUrl($url) {
		$this->OGUrl = $url;
	}

	/**
     * 
     *
     * @param	string	$description
	 * 
	 * @return	string
     */
	public function getDescription() {
		return $this->description;
	}

	/**
     * 
     *
     * @param	string	$keywords
     */
	public function setKeywords($keywords) {
		$this->keywords = $keywords;
	}

	/**
     *
	 * 
	 * @return	string
     */
	public function getKeywords() {
		return $this->keywords;
	}
	/**
     * 
     *
     * @param	string	$OGTitle
     */
	public function getOGTitle() {
		return $this->OGTitle;
	}

	/**
     * 
     *
     * @param	string	$OGImage
     */
	public function getOGImage() {
		return $this->OGImage;
	}

	/**
     * 
     *
     * @param	string	$OGDescription
     */
	public function getOGDescription() {
		return $this->OGDescription;
	}

	/**
     * 
     *
     * @param	string	$OGUrl
     */
	public function getOGUrl() {
		return $this->OGUrl;
	}
	
	/**
     * 
     *
     * @param	string	$href
	 * @param	string	$rel
     */
	public function addLink($href, $rel) {
		$this->links[$href] = array(
			'href' => $href,
			'rel'  => $rel
		);
	}

	/**
     * 
	 * 
	 * @return	array
     */
	public function getLinks() {
		return $this->links;
	}

	/**
     * 
     *
     * @param	string	$href
	 * @param	string	$rel
	 * @param	string	$media
     */
	public function addStyle($href, $rel = 'stylesheet', $media = 'screen') {
		$this->styles[$href] = array(
			'href'  => $href,
			'rel'   => $rel,
			'media' => $media
		);
	}

	/**
     * 
	 * 
	 * @return	array
     */
	public function getStyles() {
		return $this->styles;
	}

	/**
     * 
     *
     * @param	string	$href
	 * @param	string	$postion
     */
	public function addScript($href, $postion = 'header') {
		$this->scripts[$postion][$href] = $href;
	}

	/**
     * 
     *
     * @param	string	$postion
	 * 
	 * @return	array
     */
	public function getScripts($postion = 'header') {
		if (isset($this->scripts[$postion])) {
			return $this->scripts[$postion];
		} else {
			return array();
		}
	}
}