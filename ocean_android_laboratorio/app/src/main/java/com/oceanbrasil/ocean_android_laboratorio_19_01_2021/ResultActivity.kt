package com.oceanbrasil.ocean_android_laboratorio_19_01_2021

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView

class ResultActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_result)

        val nomeDigitado = intent.getStringExtra("NOME_DIGITADO")

        val textView = findViewById<TextView>(R.id.textView)

        textView.text = nomeDigitado
    }
}