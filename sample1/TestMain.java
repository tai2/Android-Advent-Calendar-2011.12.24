import net.tai2.director_test.*;

public class TestMain {

    public static void main(String argv[]) {
        sayHello(new CppClass());
        sayHello(new JavaClass());
    }

    private static void sayHello(CppClass obj) {
        Speaker speaker = new Speaker(obj);
        System.out.println(speaker.getMessage());
    }

    static {
        System.loadLibrary("director_test");
    }
}
