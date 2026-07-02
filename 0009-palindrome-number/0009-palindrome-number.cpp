class Solution {
public:
    bool isPalindrome(int x) {
        int dup = x;
        long long revnum = 0;
        while(x>0)
        {
            int ld = x % 10;
            revnum = revnum * 10 + ld;
            x = x/10;
        }
        if (dup == revnum) return true;
        else return false;
    }
};