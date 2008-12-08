#!/bin/sh

# fuzteljes.ps generalasa: nyomtatas kden keresztul pdfbe majd kpdfbol
# nyomtatas psbe
# baz.pdf generalasa: nyomtatas kghostview-ban pdfbe
# (tehat ps2pdf es pdf2ps nem jo)

pstops "1:0R@1.42(0,1h),0R@1.42(-1w,1h)" fuzteljes.ps foo.ps
psbook -s4 foo.ps bar.ps
psnup -2 bar.ps baz.ps
