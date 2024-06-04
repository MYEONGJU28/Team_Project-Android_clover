package com.clover.clover

import io.flutter.embedding.android.FlutterActivity
import androidx.appcompat.app.AppCompatActivity
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.http.GET


class MainActivity : AppCompatActivity() {
    internal interface MyApiEndpointInterface {
        @get:GET("/data")
        val data: Call<List<MyDataModel?>?>?
    }

    protected fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val gson: Gson = GsonBuilder()
            .setLenient()
            .create()
        val retrofit: Retrofit = Builder()
            .baseUrl("http://10.0.2.2:3000/") // localhost의 Android 에뮬레이터 IP
            .addConverterFactory(GsonConverterFactory.create(gson))
            .build()
        val apiService: MyApiEndpointInterface = retrofit.create(MyApiEndpointInterface::class.java)
        val call: Call<List<MyDataModel>> = apiService.data
        call.enqueue(object : Callback<List<MyDataModel?>?>() {
            fun onResponse(
                call: Call<List<MyDataModel?>?>?,
                response: Response<List<MyDataModel?>?>
            ) {
                if (response.isSuccessful()) {
                    val data: List<MyDataModel> = response.body()
                    // 데이터를 처리합니다.
                    Log.d("MainActivity", "Data received: $data")
                }
            }

            fun onFailure(call: Call<List<MyDataModel?>?>?, t: Throwable) {
                Log.e("MainActivity", "Error: " + t.message)
            }
        })
    }
}

internal class MyDataModel { // 데이터 모델 정의
}

class MainActivity: FlutterActivity()
