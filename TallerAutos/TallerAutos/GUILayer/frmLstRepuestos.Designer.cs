﻿namespace TallerAutos.GUILayer
{
    partial class frmLstRepuestos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmLstRepuestos));
            this.repuestosBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dsRptOT = new TallerAutos.dsRptOT();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.repuestosTableAdapter = new TallerAutos.dsRptOTTableAdapters.RepuestosTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.repuestosBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsRptOT)).BeginInit();
            this.SuspendLayout();
            // 
            // repuestosBindingSource
            // 
            this.repuestosBindingSource.DataMember = "Repuestos";
            this.repuestosBindingSource.DataSource = this.dsRptOT;
            // 
            // dsRptOT
            // 
            this.dsRptOT.DataSetName = "dsRptOT";
            this.dsRptOT.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            reportDataSource1.Name = "dataSetRepuestos";
            reportDataSource1.Value = this.repuestosBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "TallerAutos.Reportes.lstRepuestos.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(437, 468);
            this.reportViewer1.TabIndex = 0;
            // 
            // repuestosTableAdapter
            // 
            this.repuestosTableAdapter.ClearBeforeFill = true;
            // 
            // frmLstRepuestos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(437, 468);
            this.Controls.Add(this.reportViewer1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmLstRepuestos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DKT - Listado Repuestos";
            this.Load += new System.EventHandler(this.frmLstRepuestos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.repuestosBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsRptOT)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private dsRptOT dsRptOT;
        private System.Windows.Forms.BindingSource repuestosBindingSource;
        private dsRptOTTableAdapters.RepuestosTableAdapter repuestosTableAdapter;
    }
}