   M S B A M L   `   `   `  ����B  >Prodopt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Prodopt.windowsProdopt.windows  5   	       Prodopt.windows.OneOrder   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Prodopt.windows     5   	     � Title$  OneOrder��5   	   $	��450��6   $	��800��6*   .��5	      �  � RowDefinitions 5
   
   �� 5      $��50 �6   �� 5      �� 5      $��50 �6   .+�5   
   �� -   5        $��OrderListView��5      $��1��6(   ��65   �� *
orderItems+ �� View 5      �� 5      .P�5      �� $��ID��6%    �� DisplayMemberBinding 61   �� *	MerchId+�� 5      $
��Name��6%    63   �� *	MerchName+�� 5      $��Price��6%    64   �� *
MerchPrice+�� 5      $��Point��6%    �� Width$	 150��64    �� CellTemplate 5      �� 5      .R�5   "   ��  �� DisplayMemberPath$
 name��5      ��5   +   �� *PointCollection+ �� SelectedItem 5      �� *SelectedPoint+ �� UpdateSourceTrigger$ PropertyChanged=�	 �� Mode$	 TwoWay=�
 �� ValidatesOnDataErrors
 . 5      5      5      5       �� 5!   
   -   5        $��DiscountInfoTextBlock��5!      $��0��61   $��Right=�6>   $	��Top=�6Z   �� 5"   
   -   5        $��2��5"      $��Удалить��6   $��Right=�6I   $	��Top=�6e   $��10q�6}   �� 5#   
   -   5        $#��Сохранить заказ��5#      $	��150��6+   $��2��67   $
��Left=�6D   $	��Top=�6_   $��10q�6w   6�   5$      5%      