//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyNhanVien_WebAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class NHANVIEN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NHANVIEN()
        {
            this.NHANVIEN_PHONGBAN = new HashSet<NHANVIEN_PHONGBAN>();
        }
    
        public int MaNhanVien { get; set; }
        public string HoTen { get; set; }
        public string GioiTinh { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public string CMND { get; set; }
        public string QuocGia { get; set; }
        public string TonGiao { get; set; }
        public string DiaChiHienTai { get; set; }
        public string SoDienThoai { get; set; }
        public string Email { get; set; }
        public Nullable<System.DateTime> NgayTao { get; set; }
        public Nullable<bool> TinhTrangLamViec { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NHANVIEN_PHONGBAN> NHANVIEN_PHONGBAN { get; set; }
    }
}
