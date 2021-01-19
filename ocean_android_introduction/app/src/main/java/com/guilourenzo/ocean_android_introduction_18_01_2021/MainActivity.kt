package com.guilourenzo.ocean_android_introduction_18_01_2021

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val tvResultado = findViewById<TextView>(R.id.tvResultado)
        val btEnviar = findViewById<Button>(R.id.btEnviar)

        btEnviar.setOnClickListener {
            tvResultado.text = "Olá, Alteração de Texto!!!"
        }
    }
}