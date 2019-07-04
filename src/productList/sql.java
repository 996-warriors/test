package productList;

import java.sql.*;

public class sql {
    //����
    private String drive; //= "oracle.jdbc.driver.OracleDriver";
    //url
    private String url;//= "jdbc:oracle:thin:@192.168.153.129:1521:SPORTDB";//192.168.153.129
    //�û�������
    private String user;// = "qiang";
    private String password ;//= "Admin147258";
    //�������ݿ�
    private Connection connection = null;
    private Statement statement = null;
    private ResultSet result = null;

    public sql(String drive,String url,String user,String password) throws ClassNotFoundException {
        this.drive = drive;
        this.url = url;
        this.user = user;
        this.password = password;
        Class.forName(this.drive);
    }
    public void ConnectData()  {
    	try {
    		System.out.println(url+"==="+user+"=="+password);
    		 connection = DriverManager.getConnection(url, user, password);
    		 System.out.println(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
       
    }

    public void CloseConnect() throws SQLException {
        //System.out.println(conn);
        result.close();//���ݿ��ȿ����
        statement.close();
        connection.close();//�ر����ݿ�
    }


    public ResultSet GetResultSet(String sql) throws SQLException {
        statement = connection.createStatement();
        result = statement.executeQuery(sql);
        if (result != null)
            return result;
        else {
            System.out.println("���ݼ�Ϊ��");
            return null;
        }

    }

    /*
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        getInfo g = new getInfo("oracle.jdbc.driver.OracleDriver","jdbc:oracle:thin:@localhost:1521:SPORTDB",
                "qiang","Admin147258");
        g.ConnectData();

        ResultSet result = g.GetResultSet("select * from product");
        ResultSetMetaData metaData = result.getMetaData();
        System.out.println(metaData.getColumnCount());
        for (int i = 1; i <= metaData.getColumnCount(); i++) {
            System.out.println(metaData.getColumnType(i));
            System.out.println(metaData.getColumnTypeName(i));
        }
        System.out.println("................................................");
        while (result.next()) {
            String id = result.getString(1);// ��ȡ��һ���е�ֵ ���id
            System.out.println("id=" + id);
            System.out.println("................................................");
        }
        g.CloseConnect();
    }
    */
}
