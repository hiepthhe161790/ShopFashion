/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.Product;
import model.Shipping;



/**
 *
 * @author Admin
 */
public class OrderDBcontext extends DBContext{
    public int createReturnId(Order order) {
        try {
            String sql = "INSERT INTO [dbo].[Orders]\n"
                    + "           ([account_id]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[shipping_id])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setInt(1, order.getAccountId());
            stm.setDouble(2, order.getTotalPrice());
            stm.setString(3, order.getNote());
            stm.setInt(4, order.getShippingId());
            stm.executeUpdate();

            ResultSet rs = stm.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception ex) {
            Logger.getLogger(OrderDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public List<Order> getAllOrder() {
        List<Order> Orders = new ArrayList<>();
        try {
            String sql = "select * from [Orders]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt(1));
                order.setAccountId(rs.getInt(2));
                order.setTotalPrice(rs.getDouble(3));
                order.setNote(rs.getString(4));
                order.setCreatedDate(rs.getString(5));
                order.setShippingId(rs.getInt(6));
                
                Orders.add(order);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Orders;
    }
    public List<Order> getOrdersByAccountId(int accountId) {
    List<Order> orders = new ArrayList<>();
    try {
        String sql = "SELECT o.*, s.id as shippingId, s.name, s.phone, s.address FROM [Orders] o " +
                     "JOIN [Shipping] s ON o.shipping_id = s.id WHERE o.account_id = ?";
        PreparedStatement stm = connection.prepareStatement(sql);
        stm.setInt(1, accountId);
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            Order order = new Order();
            order.setId(rs.getInt("id"));
            order.setAccountId(rs.getInt("account_id"));
            order.setTotalPrice(rs.getDouble("totalPrice"));
            order.setNote(rs.getString("note"));
            order.setCreatedDate(rs.getString("create_date"));
            
            Shipping shipping = new Shipping();
            shipping.setId(rs.getInt("shipping_id"));
            shipping.setName(rs.getString("name"));
            shipping.setPhone(rs.getString("phone"));
            shipping.setAddress(rs.getString("address"));
            order.setShipping(shipping);
            
            orders.add(order);
        }
    } catch (Exception ex) {
        Logger.getLogger(OrderDBcontext.class.getName()).log(Level.SEVERE, null, ex);
    }
    return orders;
}
public static void main(String[] args) {
    // Tạo một đối tượng OrderDBcontext để sử dụng hàm getOrdersByAccountId()
    OrderDBcontext orderDBcontext = new OrderDBcontext();

    // Gọi hàm getOrdersByAccountId() với một accountId cụ thể
    int accountId = 1; // Thay đổi giá trị này để test với các accountId khác nhau
    List<Order> orders = orderDBcontext.getOrdersByAccountId(accountId);

    // In ra thông tin các order
    for (Order order : orders) {
        System.out.println("Order ID: " + order.getId());
        System.out.println("Account ID: " + order.getAccountId());
        System.out.println("Total Price: " + order.getTotalPrice());
        System.out.println("Note: " + order.getNote());
        System.out.println("Created Date: " + order.getCreatedDate());
        System.out.println("Shipping Information:");
        System.out.println("  ID: " + order.getShipping().getId());
        System.out.println("  Name: " + order.getShipping().getName());
        System.out.println("  Phone: " + order.getShipping().getPhone());
        System.out.println("  Address: " + order.getShipping().getAddress());
        System.out.println();
    }
}

}
