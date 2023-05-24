using System;
using System.Collections.Generic;

namespace SistemaVentasNET7.Model;

public partial class Role
{
    public int IdRol { get; set; }

    public string? Nombre { get; set; }

    public DateTime? FechaRegistro { get; set; }

    public virtual ICollection<MenusRole> MenusRoles { get; set; } = new List<MenusRole>();

    public virtual ICollection<Usuario> Usuarios { get; set; } = new List<Usuario>();
}
