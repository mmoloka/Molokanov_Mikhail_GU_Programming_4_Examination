public class Main {
    public static void main(String[] args) {

        Dog dog = new Dog("Muhtar", 24, "black", "middle");
        System.out.println(dog.getName());
        System.out.println(dog.getAge());
        System.out.println(dog.getColor());
        System.out.println(dog.getHairLength());
        dog.bark("Голос!");
        dog.seat("Сидеть!");

    }
}