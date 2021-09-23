namespace MovieTicketBooking.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class admintable30 : DbMigration
    {
        public override void Up()
        {
            DropTable("dbo.Admins");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.Admins",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Email = c.String(nullable: false),
                        Password = c.String(nullable: false),
                        cpassword = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
    }
}
