package Assignment_2_Address;



import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;



        import javax.swing.*;
        import java.awt.*;
        import java.awt.event.ActionEvent;
        import java.awt.event.ActionListener;
        import java.awt.event.WindowEvent;

        import static java.awt.event.WindowEvent.WINDOW_CLOSING;

class Login extends JFrame {
    public Login(){
        super("Login window");
        setSize(470,400);
        setVisible(true);
        setDefaultCloseOperation(HIDE_ON_CLOSE);
        setLayout(null); 


        JLabel y = new JLabel("Administrator Verification Area");
        y.setBounds(140,30,250,20);
        Font f = new Font("Arial",Font.BOLD,15);
        y.setFont(f);
        y.setForeground(Color.RED);
        JLabel l = new JLabel("Username :") ;
        l.setBounds(100,75,150,20);
        JTextField t = new JTextField();
        t.setBounds(190,75,150,20);
        JLabel ll = new JLabel("Password :");

        ll.setBounds(100,45,150,150);
        JPasswordField p = new JPasswordField();
        p.setBounds(190,110,150,20);
        JCheckBox c = new JCheckBox("Show password");
        c.setBounds(190,130,150,20);
        JButton b = new JButton("Login");
        b.setBounds(170,170,90,30);
        add(y);
        add(l);
        add(t);
        add(p);
        add(c);
        add(ll);
        add(b);
        b.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String a = t.getText();
                String pp = p.getText();
                if(a.isEmpty() || pp.isEmpty()){
                    JOptionPane.showMessageDialog(l,"Enter you Username and Password");
                }
                else {
                    if(a.equals("rock") && pp.equals("123")){
                        JOptionPane.showMessageDialog(l,"Verification successful");
                        if(e.getSource() == b){
                            new Admin();
                            dispose();

                        }

                    }
                    else {
                        JOptionPane.showMessageDialog(l,"Verification unsuccessful");
                    }

                }



            }
        });

//        b.addActionListener(new ActionListener() {
//            @Override
//            public void actionPerformed(ActionEvent e) {
//
//
//
//                }
//            }
//        });

        c.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(e.getSource() == c){
                    if(c.isSelected()){
                        p.setEchoChar((char)0);
                    }
                    else {
                        p.setEchoChar('*');
                    }
                }
            }
        });






    }
}



public class Admin_Login{
    public static void main(String[] args) {
        new Login();

    }
}
