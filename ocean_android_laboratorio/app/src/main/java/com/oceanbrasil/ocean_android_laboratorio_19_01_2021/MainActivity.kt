package com.oceanbrasil.ocean_android_laboratorio_19_01_2021

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val tvResultado = findViewById<TextView>(R.id.tvResultado)
        val etNome = findViewById<TextView>(R.id.etNome)
        val btEnviar = findViewById<Button>(R.id.btEnviar)
        val btAbreResultado = findViewById<Button>(R.id.btAbreResultado)

        btEnviar.setOnClickListener {
            if (etNome.text.isNotBlank()) {
                tvResultado.text = "Olá, ${etNome.text}!"
            } else {
                etNome.error = "Digite um nome"
            }
        }

        btAbreResultado.setOnClickListener {
            val intent = Intent(this, ResultActivity::class.java)

            intent.putExtra("NOME_DIGITADO", etNome.text.toString())
            startActivity(intent)

        }
    }
}
