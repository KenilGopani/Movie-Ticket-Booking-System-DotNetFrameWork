namespace MovieTicketBooking.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Admins", "cpassword", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Admins", "cpassword");
        }
    }
}
