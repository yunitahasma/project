import java.awt.*;
import javax.swing.*;

public class myPlaystation {
public static void addComponentsToPane(Container pane) {
JLabel label;
JLabel label2;
pane.setLayout(null);
JButton b1 = new JButton("_up_");
JButton b2 = new JButton("down");
JButton b3 = new JButton("right");
JButton b4 = new JButton("left");
JButton b5 = new JButton("select");
JButton b6 = new JButton("start");
JButton b7 = new JButton("1");
JButton b8 = new JButton("2");
JButton b9 = new JButton("3");
JButton b10 = new JButton("4");
pane.add(b1);
pane.add(b2);
pane.add(b3);
pane.add(b4);
pane.add(b5);
pane.add(b6);
pane.add(b7);
pane.add(b8);
pane.add(b9);
pane.add(b10);
label = new JLabel("Teknik Informatika (2IA24)");
pane.add(label);
label2 = new JLabel("Universitas Gunadarma (2011)");
pane.add(label2);

Insets insets = pane.getInsets();
Dimension size = b1.getPreferredSize();
b1.setBounds(70+insets.left,10+insets.top,size.width,size.height);
size=b2.getPreferredSize();
b2.setBounds(70+insets.left,90+insets.top,size.width,size.height);
size=b3.getPreferredSize();
b3.setBounds(145+insets.left,50+insets.top,size.width,size.height);
size=b4.getPreferredSize();
b4.setBounds(10+insets.left,50+insets.top,size.width,size.height);
size=b5.getPreferredSize();
b5.setBounds(230+insets.left,50+insets.top,size.width,size.height);
size=b6.getPreferredSize();
b6.setBounds(330+insets.left,50+insets.top,size.width,size.height);
size=b7.getPreferredSize();
b7.setBounds(470+insets.left,10+insets.top,size.width,size.height);
size=b8.getPreferredSize();
b8.setBounds(420+insets.left,50+insets.top,size.width,size.height);
size=b9.getPreferredSize();
b9.setBounds(470+insets.left,90+insets.top,size.width,size.height);
size=b10.getPreferredSize();
b10.setBounds(520+insets.left,50+insets.top,size.width,size.height);
size=label.getPreferredSize();
label.setBounds(240+insets.left,15+insets.top,size.width,size.height);
size=label2.getPreferredSize();
label2.setBounds(230+insets.left,90+insets.top,size.width,size.height);

}
public static void main(String[] args) {
JFrame frame=new JFrame
("Play Station IT(2IA24)Laboratorium Informatika Universitas Gunadarma xmalang 2011");
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
addComponentsToPane(frame.getContentPane());
Insets insets = frame.getInsets();
frame.setSize(600+insets.left+insets.right,200+insets.top+insets.bottom);
frame.setVisible(true);
}
}

