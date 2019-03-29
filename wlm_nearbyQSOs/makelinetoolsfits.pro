pro makelinetoolsfits

  ;;; THIS program doesn't run at all and is a hybrid. It is
  ;;; actually unecessary, which I realized midway through editing.
  
  ;; program will read in spectrum and output a form for linetools. 


  ;; read input files.

  

     specin = mrdfits(Target41_PHL2525.fits, 1, headerin)
     

  
     ;; create an outfil name

     outfil ='COS-FUV-LT-Target41.fits'
     
    

     wave130 = spec130.wavelength
     flux130 = spec130.flux
     fluxerr130 = spec130.flux_error
      wave160 = spec160.wavelength
     flux160 = spec160.flux
     fluxerr160 = spec160.flux_error
     goodwave160 = where(wave160 GE 1450.00)
     newwave160 = wave160[goodwave160]
     newflux160 = flux160[goodwave160]
     newfluxerr160 = fluxerr160[goodwave160]

     ;; stitch

     newwave = [wave130, newwave160]
     newflux = [flux130, newflux160]
     newfluxerr = [fluxerr130, newfluxerr160]

     combstruct = {wavelength: newwave, flux: newflux, flux_error: newfluxerr}

     mwrfits, combstruct, outfil, /create

     print, 'Just wrote file: '+outfil

  ENDFOR 
end
