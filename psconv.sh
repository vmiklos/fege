#!/bin/sh

# fuzteljes.ps generalasa: nyomtatas pdfbe (cutepdf) majd okularbol nyomtatas
# psbe
# (tehat pdf2ps nem jo)

pstops "1:0R@1.42(0,1h),0R@1.42(-1w,1h)" fuzteljes.ps foo.ps
psbook -s4 foo.ps bar.ps
psnup -2 bar.ps baz.ps
ps2pdf -sPAPERSIZE=a4 baz.ps
