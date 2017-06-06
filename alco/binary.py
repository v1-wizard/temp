def search(sorted_list, item):
    low = 0
    high = len(sorted_list) - 1

    while low <= high:
        mid = (low + high)
        guess = sorted_list[mid]

        if guess == item:
            return mid

        if guess > item:
            high = mid - 1
        else:
            low = mid + 1

    return None


data = [1, 2, 3, 4, 5, 6, 7, 8]
print search(data, 7)
