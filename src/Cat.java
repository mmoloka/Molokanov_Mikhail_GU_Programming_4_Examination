public class Cat extends Pet {

    private String color;
    private String hairLength;

    public Cat(String name, int age, String color, String hairLength) {
        this.name = name;
        this.age = age;
        this.color = color;
        this.hairLength = hairLength;
    }

    public void meow(String action) {
        if (action == "Показать вкусняшку")
            System.out.println("Кошка начинает мяукать");
        else System.out.println("Кошка уходит");
    }

    public void lay(String action) {
        if (action == "Погладить пузико")
            System.out.println("Кошка ложитья на спину");
        else System.out.println("Кошка уходит");
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
        return "Cat{" +
                "name='" + name + '\'' +
                "age='" + age + '\'' +
                "color='" + color + '\'' +
                ", hairLength='" + hairLength + '\'' +
                '}';
    }
}