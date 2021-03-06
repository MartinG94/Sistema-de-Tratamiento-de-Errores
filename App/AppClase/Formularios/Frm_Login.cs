﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using AppClase.Negocios;

namespace AppClase
{
    public partial class Frm_Login : Form
    {

        public string Usuario { get; set; }
        public string Password
        {
            get { return txt_password.Text; }
            set { txt_password.Text = value;  }
        }

        public Frm_Login()
        {
            InitializeComponent();
        }

        private void btn_ingresar_Click(object sender, EventArgs e)
        {
            if (this.txt_usuario.Text == "")
            {
                MessageBox.Show("No está cargado el usuario", "Importante", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                txt_usuario.Focus();
                return;
            }
            if (this.txt_password.Text == "")
            {
                MessageBox.Show("No está cargado el password", "Importante", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                txt_password.Focus();
                return;
            }
            Ng_Users usuarios = new Ng_Users();
            if (usuarios.validar_usuario(txt_usuario.Text, txt_password.Text) == Ng_Users.Respuesta.validacion_correcta)
            {
                this.Usuario = txt_usuario.Text;
                this.Close();
            }
            else
            {
                MessageBox.Show("Usuario incorrecto", "Importante", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
            
        }
    }
}
