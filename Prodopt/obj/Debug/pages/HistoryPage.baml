   M S B A M L   `   `   `  ����B  >Prodopt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Prodopt.pagesProdopt.pages  5          Prodopt.pages.HistoryPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:Prodopt.pages     5        N� Title$  HistoryPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $��* �6   6)   �� 5      $��50 �6   6*   .+�5   
   �  � Orientation$ Vertical=�6   $��Center=�6+   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $	��175��6    �� TextAlignment$ Right=�6(   Фильтр по имени:6P   �� 5      -   5        $��NameFilterTextBox��5   &   $	��225��6   6?   5      �� 5      $ 
Horizontal=�6   .+�5      �� $	��175��6   $ Right=�6(   !Фильтр по логину:6Q   �� 5      -   5         ��Name$ LoginFilterComboBox��5      $	��225��68   6D   5      �� 5      -   5         ��Name$ SuccessCheckBox��5      $C��=Показывать только успешные входы��6x   $��Center=�6�   �� 5      $ 
Horizontal=�6   .+�5      �� -   5        $��Сбросить��5      $��5q�6A   5       5!      &   System.Windows.Controls.DataGrid  5"   
   -   5          Name$ LoginHistoryDataGrid��5"         AutoGenerateColumns .  $��1��6M   ��6Z   �� *FilteredLoginHistory+	   Columns	 5#      0  *System.Windows.Controls.DataGridTextColumn  5$      ,  &System.Windows.Controls.DataGridColumn
   Header$
 ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *id+  5%      $

 User��6%    63   �� *users.login+  5&      $

 Name��6%    63   �� *
users.name+  5'      $
 LoginDateTime��6%    6<   �� *LoginDateTime+  5(      $
 TypeVxod��6%    67   �� *
TypeVxod+5*      5+      5,      