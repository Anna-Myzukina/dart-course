// ------- 4.1 Что такое дженерики? -----Generics - параметризованные типы ----------

// Синтаксис: Collection_name <data_type> identifier= new Collection_name<data_type> 

//------Example 1----------
void main (){
     
var names = <String>[];

names.addAll(['Ryzen', 'Core', 'Pentium', 'Duron']);

names.add(42); // Ошибка
}


