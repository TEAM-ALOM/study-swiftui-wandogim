let arrayOfOptionalInts: [Int?] = [nil, 2, 3, nil, 5]

var count = 0
for case let number? in arrayOfOptionalInts {
    count += 1
    print(number)
}
 
print("반복문 실행 횟수 : \(count)")
