   M S B A M L   `   `   `  ����B  >Prodopt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Prodopt.pagesProdopt.pages  5          Prodopt.pages.OrdersPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:Prodopt.pages     5        N� Title$  
OrdersPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      $��50 �6   6*   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5      $��0��6%      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Номер заказа��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *id+   ElementStyle 5      �� 5       �� 
TargetType" ��6    .�5      �� 	 �� Property	 � ��
 �� Value$
 Center=�6D   5      5        5      $ Клиент��6%    65   �� *
users.name+  5      $ Статус��6%    65   �� *status.status_name+  5      $ Пункт выдачи��6%    6;   �� *
point.name+  5      $ Дата заказа��6%    6:   �� *
order_date+ �� StringFormat$ 
dd.MM.yyyy��  5      $ Код получения��6%      
FontWeight$
 Bold"�6U    6<   �� *code+6U     5      $ Цена��6%    63   �� *cost+  5       $ Скидка��6%    65   �� *
discount+  5!      $2 ,Кол-во дней для оказания��6%    6G   �� *delivery_days+4  .System.Windows.Controls.DataGridTemplateColumn  5"      $" Редактирование��6)      CellTemplate 5#      �� 5$      .R�5%      �� -   5        $	��120��5%   %   $ ��Редактировать��61   6I   5&      5(      5*      �� 5+   
   $��1��6    �� Orientation$ 
Horizontal=�6"   .+�5,      �� -   5         ��Name$ BtnCode��5,      $��Штрих-код��6&   6:   �� 5-      -   5        $��BtnSave��5-      $	��PDF��6$   62   5.      5/      50      