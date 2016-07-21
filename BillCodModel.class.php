<?php
namespace Home\Model;

use Think\Model;

class BillCodModel extends Model
{
	public function test()
    {
        $data = array(
            'status'=>2,
        );
        $this->where('id in (1,2,3)')->data($data)->save();
    }
    /**
     * 自动完成
     */
    protected $_auto = array(
        array('add_time','time',self::MODEL_INSERT,'function'),
        array('status','1',self::MODEL_INSERT),
    );
    
    /**
     * 账单状态
     */
    public $STATUS = array(
        //待提交状态
        'WAIT_COMMIT' => 1,
        //待审核状态
        'WAIT_VERIFY' => 2,
        //已审核状态
        'HAS_VERIFIED' => 3,
        //已付款状态
        'ACCOUNT_PAID' => 4,
    );
    
    protected function update($data)
    {
        $data = $this->create($data);
        if(!$data['id']){
            $id = $this->add();
            if(!$id){
                $this->error = '数据插入失败';
                return false;
            }
            $data['id'] = $id;
        }else{
            $res = $this->update();
            if(!$res){
                $this->error = '数据更新失败';
                return false;
            }
        }
        return $data;
    }

    protected function parseFilter($filter,$paging)
    {
        
    }
    public function billList($filter,$paging)
    {
        $this->parseWhere($filter,$paging);
    }
    
    public function upload()
    {
        
    }
    
    public function export()
    {
        
    }
}
