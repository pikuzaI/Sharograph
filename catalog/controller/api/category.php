<?php
class ControllerApiCategory extends Controller {
	public function getcategories(){
		$this->load->model('catalog/category');
		$categories = $this->model_catalog_category->getCategoriesFigures();
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($categories));
	}
}