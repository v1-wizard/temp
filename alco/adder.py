def array_sum(array):
    def sum_recursion(s, arr):
        if len(arr) == 0:
            return s
        else:
            s += arr[0]
            del arr[0]
            return sum_recursion(s, arr)

    return sum_recursion(0, array)


print array_sum(range(1, 100))
