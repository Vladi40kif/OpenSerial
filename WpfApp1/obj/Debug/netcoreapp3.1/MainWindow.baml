   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  Simple COM Console��5   	   $	��460��6$   $	��690��61   $
��Auto=�6=   $	��500��6o   $	��380��6~   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��94* �6   �� 5      $
��251* �6   .+�5   
   �� -   5        $��ComboBox_COMs��5      $
��Left=�6(   $��	19,23,0,0q�6C   $	��Top=�6V   $	��120��6n   6z   �� 5   
   $��Select COM:��6   $
��Left=�6&   $��32,0,0,0q�6A   $	��Top=�6S   $��34��6k   $��94��6w   �� 5   
   -   5        $��Button_RefleshCOMsList��5      $��Refresh��6/   $
��Left=�6A   $��
148,24,0,0q�6\   $	��Top=�6p   $��21��6�   $��67��6�   $��2��6�   �� 5   
   -   5        $��ComboBox_Bundrate��5      $
��Left=�6,   $��	19,69,0,0q�6G   $	��Top=�6Z   $	��120��6r   .@�5      �� 3006   �� 5      12006   �� 5      24006   �� 5      48006   �� 5      96006   �� 5      192006   �� 5      384006   �� 5      576006   �� 5      748806   �� 5      1152006    5      �� 5   
   $��Select bund rate:��6   $
��Left=�6,   $��	30,46,0,0q�6G   $	��Top=�6Z   $��34��6r   $	��107��6~   �� 5   
   -   5        $��ListBox_Chat��5      $��42,10,20,50q�6&   $��1��6;   �� 5    
   -   5        $��Button_Start��5       $��Start��6%   $
��Left=�65   $��
19,117,0,0q�6P   $	��Top=�6d   $��25��6|   $	��120��6�   6�   �� 5!   
   -   5        $��Button_Stop��5!      $
��Stop��6$   $
��Left=�63   $��
19,158,0,0q�6N   $	��Top=�6b   $��25��6z   $	��120��6�   6�   �� 5"   
   -   5        $��TextBox_InputCommand��5"      $��
42,0,75,15q�6.   $��Bottom=�6B   $��Bottom=�6]   $��0��6   $��16(�6�   $��1��6�   �� 5#   
   -   5        $��Button_Send��5#      $
��SEND��6$   $��	0,0,20,15q�63   $��Bottom=�6F   $��25��6a   $��45��6m   $��Bottom=�6x   $��0��6�   $��Right=�6�   $��14(�6�   $��1��6�   �� 5$   
   -	   5        $��CheckBox_ShowTime��5$      $��	Show time��6,   $
��Left=�6@   $��
19,207,0,0q�6[   $	��Top=�6o   $��91��6�   �� 5%   
   -
   5        $��CheckBox_ShowSendData��5%      $��Show send data��60   $
��Left=�6I   $��
19,231,0,0q�6d   $	��Top=�6x   �� 5&   
   -   5        $��Button_ClearConsole��5&      $��Clear��6,   $
��Left=�6<   $��
17,300,0,0q�6W   $	��Top=�6k   $��25��6�   $��54��6�   6�   �� 5'   
   -   5        $��Button_LogSave��5'      $��Save log��6'   $
��Left=�6:   $��
85,300,0,0q�6U   $	��Top=�6i   $��25��6�   $��54��6�   6�   5(      5*      