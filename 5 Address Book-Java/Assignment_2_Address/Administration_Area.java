package Assignment_2_Address;


import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

class Admin extends JFrame{
    public Admin(){
        super("Administration_Area");
        setSize(400,350);
        setVisible(true);
        setDefaultCloseOperation(HIDE_ON_CLOSE);
        setLayout(null);
        //
        JLabel w = new JLabel("Welcome to Administration Area!");
        JLabel l = new JLabel(" To Perform Click");
        JButton view = new JButton("View All Details");
        JButton edit = new JButton("Edit Contacts");
        JButton admin = new JButton("Add an Admin");
        //
        w.setBounds(98,20,250,20);
        Font ff = new Font("Arial",Font.BOLD,13);
        w.setFont(ff);
        w.setForeground(Color.RED);
        l.setBounds(140,63,150,50);
        edit.setBounds(37,125,150,40);
        view.setBounds(200,125,150,40);


        admin.setBounds(110,200,150,40);

        //
        add(w);
        add(l);
        add(view);

        add(edit);

        edit.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new Edit().setVisible(true);
            }
        });
        view.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new ShowData().setVisible(true);
            }
        });

        add(admin);
        admin.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                new NewAdmin().setVisible(true);
            }
        });



    }
}


public class Administration_Area {
    public static void main(String[] args) {
        new Admin();
    }
}
