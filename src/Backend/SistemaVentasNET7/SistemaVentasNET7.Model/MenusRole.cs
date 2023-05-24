using System;
using System.Collections.Generic;

namespace SistemaVentasNET7.Model;

public partial class MenusRole
{
    public int IdMenuRol { get; set; }

    public int? IdMenu { get; set; }

    public int? IdRol { get; set; }

    public virtual Menu? IdMenuNavigation { get; set; }

    public virtual Role? IdRolNavigation { get; set; }
}
