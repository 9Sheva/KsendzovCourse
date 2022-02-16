#1.Создать переменную типа String
str='Hello, I am Kirill'
print(type(str),str)

#2.Создать переменную типа Integer
a = 10
b = 15
c = a + b
print(type(c), c)

#3.Создать переменнуютипа Float
a = 1.4
b = 1.2
c = a + b
print(type(c), c)

#4.Создать переменную типа Bytes
string = "Python is interesting."
arr = bytes(string, 'utf-8')
print(type(arr), arr)

#5.Создать переменную типа List
l = [1, 2, 3]
print(type(l),l)

#6.Создать переменную типа Tuple
tuple_creation = tuple('Pass')
print(tuple_creation)

#7.Создать переменную типа Set
my_set = {1, 2, 3, 4, 5}
print(type(my_set),my_set)

#8.Создать переменную типа Frozen set
fs = frozenset('a')
print(type(fs),fs)


#9.Создать переменную типа Dict #
d1 = dict(Ivan="manager", Mark="worker")
print(type(d1),d1)

#11.Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
print('Kirill'+'QA')

#12.Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
print('Я Кирилл я и буду в QA через (месяцев)', 2)