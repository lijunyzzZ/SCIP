(define (subsets s) 
    (if (null? s) (list '())
    (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (x) (cons (car s) x ))rest))
    )
    )
)
(define list1 (list 1 2 3))
;  public List<List<Integer>> subsets(int[] nums) {
;         List<List<Integer>> res = new ArrayList<List<Integer>>();
;         List<Integer> temp = new ArrayList<Integer>();
;         dfs(res, temp, nums, 0);
;         return res;
;     }
;     private void dfs(List<List<Integer>> res, List<Integer> temp, int[] nums, int j) {
;         res.add(new ArrayList<Integer>(temp));
;         for(int i = j; i < nums.length; i++) {
;             temp.add(nums[i]);  //① 加入 nums[i]
;             dfs(res, temp, nums, i + 1);  //② 递归
;             temp.remove(temp.size() - 1);  //③ 移除 nums[i]
;         }
;     }
; 输出
; (() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3))
; 1> 1 + sub {2 , 3 } 1 和 {2,3}的子集组合 在前面append{2,3}的子集{nil 3 2 2,3} append  {nil 3 2 2,3} + 1 => {nil 2 2 2,3 1  1,3 1,2  1,2,3}
; 2> 2 + sub {3} 2 和三的子集组合 {nil 3} apend {2 , {2 ,3}} => {nil 3 2 2,3}
; 3> 3 + sub {}  => nil append 3  => {nil 3} 