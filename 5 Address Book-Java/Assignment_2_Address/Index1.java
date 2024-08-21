package Assignment_2_Address;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

class First_Page extends JFrame {
    public First_Page(){
        super("First Page");
        setSize(400,400);
        setVisible(true);
        setDefaultCloseOperation(HIDE_ON_CLOSE);
        setLayout(null);
        //
        JLabel w = new JLabel("Welcome to The Address Book!");
        JLabel l = new JLabel(" To Perform Click");
        JButton add_new = new JButton("Add New Contact");
        JButton view = new JButton("View All Details");
        JButton search = new JButton("Search Contacts");
        JButton edit = new JButton("Edit Contacts");
        JButton admin = new JButton("Administration");
        //
        w.setBounds(75,20,250,20);
        Font ff = new Font("Arial",Font.BOLD,13);
        w.setFont(ff);
        w.setForeground(Color.RED);
        l.setBounds(130,49,150,50);
        add_new.setBounds(37,110,150,40);
        view.setBounds(200,110,150,40);
        search.setBounds(37,170,150,40);
        edit.setBounds(200,170,150,40);
        admin.setBounds(110,250,150,40);

        //
        add(w);
        add(l);
        add(add_new);
        add(view);
        add(search);
        add(edit);
        add(admin);

        //
        add_new.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new Add();
               // dispose();

            }
        });

        search.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new Searcing_Data().setVisible(true);
            }
        });

        view.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                new ShowData().setVisible(true);
            }
        });

        edit.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                new VerificationLogin().setVisible(true);
                JOptionPane.showMessageDialog(null,"Only admin can edit information.Verify yourself.");

            }
        });


        admin.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                JOptionPane.showMessageDialog(null,"Only admin can enter in this area.Verify yourself.");
                new Login();


            }
        });







    }
}

public class Index1 {
    public static void main(String[] args) {
        new First_Page();
    }
}

