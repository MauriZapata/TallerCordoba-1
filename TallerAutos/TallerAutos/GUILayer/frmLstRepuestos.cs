﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TallerAutos.GUILayer
{
    public partial class frmLstRepuestos : Form
    {
        public frmLstRepuestos()
        {
            InitializeComponent();
        }

        private void frmLstRepuestos_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'dsRptOT.Repuestos' Puede moverla o quitarla según sea necesario.
            this.repuestosTableAdapter.Fill(this.dsRptOT.Repuestos);

            this.reportViewer1.RefreshReport();
        }
    }
}
