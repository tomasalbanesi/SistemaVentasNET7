using System;
using System.Collections.Generic;

namespace SistemaVentasNET7.Model;

public partial class NumerosDocumento
{
    public int IdNumeroDocumento { get; set; }

    public int UltimoNumero { get; set; }

    public DateTime? FechaRegistro { get; set; }
}
