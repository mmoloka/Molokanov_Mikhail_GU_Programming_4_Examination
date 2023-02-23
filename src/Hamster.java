public class Hamster extends Pet {

    private String color;
    private String hairLength;

    public Hamster(String name, int age, String color, String hairLength) {
        this.name = name;
        this.age = age;
        this.color = color;
        this.hairLength = hairLength;

    }

    void run(String action) {
        if (action == "Поставить в колесо")
            System.out.println("Хомяк начинает бежать в колесе");
        else System.out.println("Хомяк прячется в домике");
    }

    void play(String action) {
        if (action == "Дать игрушку")
            System.out.println("Хомяк начинает играть с игрушкой");
        else System.out.println("Хомяк прячется в домике");
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
}
