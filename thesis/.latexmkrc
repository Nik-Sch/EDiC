$out_dir= ('out');
system ("mkdir -p tikz_out; find . -type d ! -path './.git*' ! -path './$out_dir*' ! -path './sinnloseskriptsfuertex*' -exec mkdir -p $out_dir/{} \\;");

# for glossaries package
add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
$clean_ext .= " acr acn alg glo gls glg";
sub makeglossaries {
  my ($name, $path) = fileparse( $$Psource );
  return system "makeglossaries -d '$path' '$name'";
}


# for xelatex
# $pdf_mode = 5;
# $postscript_mode = $dvi_mode = 0;
# $pdf_previewer = 'start evince';
# push @extra_xelatex_options, '-synctex=1' ;
