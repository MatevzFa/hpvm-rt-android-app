package si.matevzfa.hpvm;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        new Thread(new Runnable() {
            @Override
            public void run() {
                int result = runHPVM();
                Log.i(MainActivity.class.getSimpleName(), "HPVM Result: " + result);
            }
        }).start();
    }

    static {
        System.loadLibrary("hpvm-sum");
    }

    native int runHPVM();
}
