using System;
using System.Collections.Generic;

namespace SistemaVentasNET7.Model;

public partial class Menu
{
    public int IdMenu { get; set; }

    public string? Nombre { get; set; }

    public string? Icono { get; set; }

    public string? Url { get; set; }

    public virtual ICollection<MenusRole> MenusRoles { get; set; } = new List<MenusRole>();
}
