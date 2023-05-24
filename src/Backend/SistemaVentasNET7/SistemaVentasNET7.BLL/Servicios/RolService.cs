using AutoMapper;
using SistemaVentasNET7.BLL.Servicios.Contrato;
using SistemaVentasNET7.DAL.Repositorios.Contrato;
using SistemaVentasNET7.DTO;
using SistemaVentasNET7.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaVentasNET7.BLL.Servicios
{
    public class RolService : IRolService
    {

        private readonly IGenericRepository<Role> _rolRepositorio;
        private readonly IMapper _mapper;

        public RolService(IGenericRepository<Role> rolRepositorio, IMapper mapper)
        {
            _rolRepositorio = rolRepositorio;
            _mapper = mapper;
        }

        public async Task<List<RolDTO>> Lista()
        {
            try
            {
                var listaRoles = await _rolRepositorio.Consultar();
                return _mapper.Map<List<RolDTO>>(listaRoles.ToList());

            }
            catch
            {
                throw;
            }
        }
    }
}
