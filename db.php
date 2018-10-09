<?php
class Db{
	//Tao bien $conn ket noi
	public static $conn;
	//Tao ket noi trong ham construct
	public function __construct(){
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	public function __destruct(){
		self::$conn->close();
	}
	public function getData($obj){
		$arr = array();
		while($row = $obj->fetch_assoc()){
			$arr[]=$row;
		}
		return $arr;
	}
	//Viet ham lay ra tên và giá sản phẩm của hãng “Apple”
	public function product1(){
		//Viet cau SQL
		$sql = "SELECT * FROM protypes,products,manufactures WHERE protypes.type_ID = products.TYPE_ID AND products.MANU_ID = manufactures.manu_ID";
		$result = self::$conn->query($sql);
		return $this->getData($result);

}
public function product2(){
		//Viet cau SQL
		$sql = "SELECT * FROM manufactures WHERE manufactures.manu_ID";
		$result = self::$conn->query($sql);
		return $this->getData($result);

}
	public function Seach($seach)
	{
		$sql = "SELECT * FROM protypes,products,manufactures 
		WHERE products.manu_ID = manufactures.manu_ID
		AND protypes.type_ID = products.type_ID 
		AND `name` LIKE '%$seach%' OR 'DESCRIPTION' LIKE '%$seach%'";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	public function getAllProducts($page, $per_page)
   {
 
// Tính số thứ tự trang bắt đầu  
   
   $first_link = ($page - 1) * $per_page; 
  
   $sql = "SELECT *
    FROM `protypes` , `products`, `manufactures`
    WHERE products.type_ID = protypes.type_ID
    AND products.MANU_ID = manufactures.MANU_ID
    LIMIT $first_link, $per_page";
    $result = self::$conn->query($sql);
    return $this->getData($result);
}
 
   public function paginate($url, $total, $page, $per_page, $offset)
   {
     if($total <= 0) { 
     	return "";
     
   } 
     
     $total_links = ceil($total/$per_page); 
     
     if($total_links <= 1) { 
     
 
      return ""; 
     
} 
 
     $from = $page - $offset; 
     
     $to = $page + $offset; 

     
     if($from <= 0) { 
     
 
     $from = 1; 
      
 
     $to = $offset * 2; 
     
} 
    
     if($to > $total_links) { 
     
 
     $to = $total_links; 
     
} 
    
     $link = ""; 
    
     for ($j = $from; $j <= $to; $j++) { 
    
 
     $link = $link."<a href = '$url?page=$j'> $j </a>"; 
    
} 
   
     return $link; 
} 
   }
?>