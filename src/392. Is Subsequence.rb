#two pointer
#greedy
def is_subsequence(s, t)
    s_bound, t_bound, s_index, t_index = s.length, t.length, 0, 0
    while t_index < t_bound && s_index < s_bound
        if s[s_index] == t[t_index]
            s_index += 1
        end
        t_index += 1
    end
    s_index == s_bound
end