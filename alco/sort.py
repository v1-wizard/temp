def quick(array):
    if len(array) < 2:
        return array
    else:
        pivot = array[0]
        less = [elem for elem in array[1:] if elem <= pivot]
        greater = [elem for elem in array[1:] if elem > pivot]

        return quick(less) + [pivot] + quick(greater)


def selection(array):
    def find_min(arr):
        min = arr[0]
        min_index = 0
        for i in range(1, len(arr)):
            if arr[i] < min:
                min = arr[i]
                min_index = i

        return min_index

    new_arr = []
    for i in range(len(array)):
        min_index = find_min(array)
        new_arr.append(array.pop(min_index))
    return new_arr


data = [1, 2, 54, 4, 5, 6, 7, 8]
print quick(data)
print selection(data)
