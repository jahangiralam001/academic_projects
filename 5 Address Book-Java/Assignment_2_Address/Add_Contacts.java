package Assignment_2_Address;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.*;

class Add extends JFrame {
    public Add(){
        super("Add Contacts");
        setSize(470,500);
        setVisible(true);
        setDefaultCloseOperation(HIDE_ON_CLOSE);
        setLayout(null); 


        JLabel y = new JLabel("Contacts Adding Area");
        y.setBounds(170,20,250,20);
        Font f = new Font("Arial",Font.BOLD,15);
        y.setFont(f);
        y.setForeground(Color.RED);
        JLabel l = new JLabel("Name :") ;
        l.setBounds(130,73,150,20);
        JTextField t = new JTextField();
        t.setBounds(190,75,150,20);
        JLabel ll = new JLabel("NID Serial number :");
        ll.setBounds(60,45,150,150);
        JTextField product = new JTextField();
        product.setBounds(190,110,150,20);
        //
        JLabel ph = new JLabel("Phone number:");
        JLabel E  = new JLabel("Email id:");
        JLabel Adr = new JLabel("Address:");
        //bounds
        ph.setBounds(80,175,150,20);
        E.setBounds(120,145,150,20);
        Adr.setBounds(114,205,150,20);
        //Text level
        JTextField pho = new JTextField();
        JTextField Ee = new JTextField();
        JTextArea Adrr = new JTextArea();
        //
        pho.setBounds(190,175,150,20);
        Ee.setBounds(190,145,150,20);
        Adrr.setBounds(190,205,150,120);



        //JCheckBox c = new JCheckBox("Show password");
        // c.setBounds(190,130,150,20);
        JButton b = new JButton("Add New");
        JButton b1 = new JButton("Done");
        b.setBounds(140,350,90,30);
        b1.setBounds(270,350,90,30);
        add(y);
        add(l);
        add(t);
        add(product);
        add(ll);
        //
        add(ph);
        add(pho);
        add(E);
        add(Ee);
        add(Adr);
        add(Adrr);
        add(b);
        add(b1);

        b.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String a = t.getText();
                String s = product.getText();
                String df= pho.getText();
                String f = Ee.getText();
                String w = Adrr.getText();

                try{
                    if (a.isEmpty() || s.isEmpty() || df.isEmpty()||f.isEmpty()||w.isEmpty()){
                        JOptionPane.showMessageDialog(t,"You have to complete every fields!");
                    }
                    else
                    {

                        FileWriter fb =new FileWriter("Files/Contacts_data.txt",true);
                        BufferedWriter p = new BufferedWriter(fb);
                        p.write(a+"#"+s+"#"+f+"#"+df+"#"+w);

                        p.newLine();

                        p.close();

                        JOptionPane.showMessageDialog(t,"Your data saved successfully");

                        t.setText(" ");
                        product.setText("");
                        pho.setText("");
                        Ee.setText("");
                        Adrr.setText("");

                    }



                }
                catch (Exception da){
                    da.printStackTrace();
                }


            }
        });


        b1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                dispose();
            }
        });
    }
}



public class Add_Contacts {
    public static void main(String[] args) {
        new Add();
    }
}
