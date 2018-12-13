import Database.Config;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection conn;

    public MySQLAdsDao(Config config) {
        try {
            this.conn = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        String allQuery = "SELECT * FROM ads;";
        List<Ad> allAds = new ArrayList<>();
        try {
            Statement stmt = this.conn.createStatement();
            ResultSet rs = stmt.executeQuery(allQuery);

            while (rs.next()){
                allAds.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return allAds;
    }


    @Override
    public Long insert(Ad ad) {
        String insertAd = String.format("INSERT INTO ads (title, description, user_id) VALUES '%s', '%s', '%d';", ad.getTitle(), ad.getDescription(), ad.getUserId());
        long lastInsertedId = 0;

        try {
            Statement stmt = this.conn.createStatement();

            stmt.executeUpdate(insertAd, Statement.RETURN_GENERATED_KEYS);

            ResultSet keyRS = stmt.getGeneratedKeys();

            if (keyRS.next()) {
                lastInsertedId = keyRS.getLong(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lastInsertedId;
    }
}
