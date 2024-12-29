<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
	/**
     * barang_biaya_option_list Model Action
     * @return array
     */
	function barang_biaya_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT DISTINCT biaya AS value , biaya AS label FROM barang ORDER BY label ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * barang_id_pengirim_option_list Model Action
     * @return array
     */
	function barang_id_pengirim_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_pengirim AS value,nama AS label FROM pengirim ORDER BY id_pengirim";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * barang_id_penerima_option_list Model Action
     * @return array
     */
	function barang_id_penerima_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_penerima AS value,penerima AS label FROM penerima ORDER BY id_penerima ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * barang_id_layanan_option_list Model Action
     * @return array
     */
	function barang_id_layanan_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_layanan AS value,nama AS label FROM layanan ORDER BY id_layanan ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * pengiriman_id_barang_option_list Model Action
     * @return array
     */
	function pengiriman_id_barang_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_barang AS value,nama_brg AS label FROM barang";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * pengiriman_id_kurir_option_list Model Action
     * @return array
     */
	function pengiriman_id_kurir_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT DISTINCT id_kurir AS value , nama_kurir AS label FROM kurir ORDER BY label ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * user_username_value_exist Model Action
     * @return array
     */
	function user_username_value_exist($val){
		$db = $this->GetModel();
		$db->where("username", $val);
		$exist = $db->has("user");
		return $exist;
	}

	/**
     * user_email_value_exist Model Action
     * @return array
     */
	function user_email_value_exist($val){
		$db = $this->GetModel();
		$db->where("email", $val);
		$exist = $db->has("user");
		return $exist;
	}

	/**
     * getcount_penerima Model Action
     * @return Value
     */
	function getcount_penerima(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM penerima";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_pengirim Model Action
     * @return Value
     */
	function getcount_pengirim(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM pengirim";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_pengiriman Model Action
     * @return Value
     */
	function getcount_pengiriman(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM pengiriman";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_layanan Model Action
     * @return Value
     */
	function getcount_layanan(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM layanan";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_kurir Model Action
     * @return Value
     */
	function getcount_kurir(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM kurir";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
	* barchart_penggunalayananpengiriman Model Action
	* @return array
	*/
	function barchart_penggunalayananpengiriman(){
		
		$db = $this->GetModel();
		$chart_data = array(
			"labels"=> array(),
			"datasets"=> array(),
		);
		
		//set query result for dataset 1
		$sqltext = "SELECT  b.id_layanan, COUNT(b.nama_brg) AS count_of_nama_brg FROM barang AS b GROUP BY b.id_layanan";
		$queryparams = null;
		$dataset1 = $db->rawQuery($sqltext, $queryparams);
		$dataset_data =  array_column($dataset1, 'count_of_nama_brg');
		$dataset_labels =  array_column($dataset1, 'id_layanan');
		$chart_data["labels"] = array_unique(array_merge($chart_data["labels"], $dataset_labels));
		$chart_data["datasets"][] = $dataset_data;

		return $chart_data;
	}

}
