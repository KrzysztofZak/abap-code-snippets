INITIALIZATION.

data: lr_blart_s like LINE OF s_blart.

* Exclude doc types
lr_blart_s-sign = 'E'.
lr_blart_s-option = 'EQ'.
lr_blart_s-low = 'PO'.
append lr_blart_s to s_blart.
lr_blart_s-low = 'DR'.
append lr_blart_s to s_blart.