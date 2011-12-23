package net.tai2.director_test;

import android.app.Activity;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.TextView;

public class TestMain extends Activity {
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        FrameLayout layout = new FrameLayout(this);
        TextView text = new TextView(this);
        layout.addView(text);
        setContentView(layout);

        StringBuilder builder = new StringBuilder();
        sayHello(builder, new CppClass());
        sayHello(builder, new JavaClass());

        System.gc();
        
        text.setText(builder.toString());        
    }
    
    private void sayHello(StringBuilder builder, CppClass obj) {
    	Speaker speaker = new Speaker(obj);
    	builder.append(speaker.getMessage() + "\n");
    }
    
    static {
    	System.loadLibrary("director_test");
    }
}