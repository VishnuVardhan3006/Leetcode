class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        int n = nums.size();
        unordered_map<int,int> mp;
        int sum = 0;
        for(int i = 0; i<n; i++)
        {
            int find_num2 = target - nums[i];
            if(mp.find(find_num2) != mp.end())
            {
                return{mp[find_num2],i};
            }
            mp[nums[i]] = i;
        }
       return {}; 
    }
};