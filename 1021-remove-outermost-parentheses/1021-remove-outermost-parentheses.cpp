class Solution {
public:
    string removeOuterParentheses(string s) {
        string result = "";
        int level  = 0;

        for(char ch: s)
        {
            if(ch == '(')
            {
                if(level>0) result+=ch;
                level++;
            }
            if(ch == ')')
            {
                if(level>1) result+=ch;
                level--;
            } 
        }
        return result;
    }
};