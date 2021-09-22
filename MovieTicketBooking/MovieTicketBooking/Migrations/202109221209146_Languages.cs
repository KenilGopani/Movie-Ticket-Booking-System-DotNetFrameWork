namespace MovieTicketBooking.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Languages : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Shows", "Language", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Shows", "Language");
        }
    }
}
