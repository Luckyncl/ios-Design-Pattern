        工厂模式的几种形态
    工厂模式专门负责将大量有共同接口的类实例化。工厂模式可以动态决定将哪一个类实例化，不必事先知道每次要实例化哪一个类。工厂模式有以下几种形态：
    1.简单工厂模式（Simple Factory Pattern）
    2.工厂方法模式(Factory Method Pattern)
    3.抽象工厂模式(Abstract Factory Pattern)


1.工厂方法： 也称为虚构造器，它适用于的情况： 一个类无法预期需要生成哪个类，想让其子类来指定所生成的对象
  工厂方法模式： 最初定义： 定义创建对象的接口，让子类决定实例化哪一个类，工厂方法使得一个类的实例化延迟到其子类。

   cocoa 中NSNumber 是使用工厂方法的典型， 如果只通过alloc init来创建NSNumber 实例这样生成的NSNumber 是无意义的
  

   何时使用工厂方法： 
    1、编译时无法准确预期要创建对象的类
    2、类想让其子类决定在运行时创建什么
    3、类有若干辅助类为其子类，而你想返回哪个子类信息的局部化

   工厂方法：特点 ，子类需要重写父类的方法