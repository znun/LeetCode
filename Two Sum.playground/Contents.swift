
//The Brute Force Solution

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0...(nums.count - 1) {
        let ni = nums[i]
        for j in (i + 1)..<nums.count {
            if ni+nums[j] == target {
                return [i,j]
            }
        }
    }
    
    return []
}


