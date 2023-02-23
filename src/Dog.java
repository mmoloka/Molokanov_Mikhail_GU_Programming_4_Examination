public class Dog extends Pet {

    private String color;
    private String hairLength;

    public Dog(String name, int age, String color, String hairLength) {
        this.name = name;
        this.age = age;
        this.color = color;
        this.hairLength = hairLength;
    }

    public void bark(String command) {
        if (command == "Голос!")
            System.out.println("Собака лаит по команде");
        else System.out.println("Собака не знает команду");
    }

    public void seat(String command) {
        if (command == "Сидеть!")
            System.out.println("Собака садится по команде");
        else System.out.println("Собака не знает команду");
    }

    public void teachCommand() {
        System.out.println("Отправить собаку на дрессировку");
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getHairLength() {
        return hairLength;
    }

    public void setHairLength(String hairLength) {
        this.hairLength = hairLength;
    }

    @Override
    public String toString() {
        return "Dog{" +
                "name='" + name + '\'' +
                "age='" + age + '\'' +
                "color='" + color + '\'' +
                ", hairLength='" + hairLength + '\'' +
                '}';
    }
}
