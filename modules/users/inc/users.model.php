<?php
defined('COT_CODE') or die('Wrong URL');

class User
{
    private $table = "";
    private $db = null;

    public function __construct()
    {
        global $db, $db_x;
        $this->table = $db_x . "users";
        $this->db = $db;
    }

    public function find($condition = "", $offset = 0, $max = 50)
    {
        return $this->db->query("SELECT * FROM {$this->table} AS u {$condition} LIMIT {$offset}, $max")->fetchAll();
    }
    public function findOne($condition = "")
    {
        return $this->db->query("SELECT * FROM {$this->table} AS u {$condition}")->fetch();
    }
    public function findAndCount($condition = "", $offset = 0, $max = 50)
    {
        $sqlcount = $this->db->query("SELECT COUNT(*) FROM {$this->table} AS u {$condition}");
        return [$this->find($condition, $offset, $max), $sqlcount->fetchColumn()];
    }
    public function userExists($name)
    {
        $sqlcount = $this->db->query("SELECT user_id FROM {$this->table} WHERE user_name = ? LIMIT 1", [$name]);
        return $sqlcount->fetch();
    }
    public function emailExists($email)
    {
        $sqlcount = $this->db->query("SELECT user_id FROM {$this->table} WHERE user_email = ? LIMIT 1", [$email]);
        return $sqlcount->fetch();
    }
    public function countGroups($condition = "") {
        global $db_groups_users;
        return $this->db->query("SELECT * FROM {$db_groups_users} AS g {$condition}")->rowCount();
    }
    public function findUserId($u){
        return $this->db->query("SELECT user_id FROM {$this->table} WHERE user_name=".$this->db->quote($u)." LIMIT 1")->fetchColumn();
    }

}
