# 배열 arr의 크기 : 1,000,000 이하의 자연수
# 배열 arr의 원소의 크기 : 0보다 크거나 같고 9보다 작거나 같은 정수

# [1,1,3,3,0,1,1]	[1,3,0,1]
# [4,4,4,3,3]	[4,3]


def solution(arr):
    
    answer=[]
    answer.append(arr[0])

    for i in range ( 1, len(arr)): 
        if arr[i]==answer[-1]:
            continue;
        else : 
            answer.append(arr[i])

    return answer

print(solution()[4])