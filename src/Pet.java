public abstract class Pet extends Animal {

    protected String name;
    protected String size;

    private void liveAtHome() {
        System.out.println("Животное живет в жилище человека");
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
