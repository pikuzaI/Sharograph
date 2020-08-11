<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->load->language('common/home');
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));
		$this->load->model('catalog/category');
		$this->load->model('tool/image');
		$url = '';
		$path = '';
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
		$results = $this->model_catalog_category->getCategories(0);
		$data['categories'] = array();
		foreach ($results as $result) {
			if($result['image']){
				$data['categories'][] = array(
					'name' => $result['name'],
					'href' => $this->url->link('product/category', 'path=' . $result['category_id'] . $url),
					'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get('theme_' . $this->config->get('config_theme') . '_image_category_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_category_height'))
				);
			}
			
	}
		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer/index_footer');
		$data['header'] = $this->load->controller('common/header/index_home');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
