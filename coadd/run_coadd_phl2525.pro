target = 'phl2525'
bin = 1
tag = 'bin1'

path = '../data/cos_phl2525/'
chan = 3
grat = 'both'

coadd_x1d, wave, flux, err, path=path, chan=chan, bin=bin, plot=2
figname = target+'_'+grat+'_coadd_x1d_'+tag+'.png'
saveimage, figname, /png
spec = {WAVE:wave,  FLUX:flux, ERROR:err}
fitsfile = target+'_'+grat+'_coadd_x1d_'+tag+'.fits'
mwrfits, spec, fitsfile, /create, /silent

;;;;;;;; bin 3 ;;;;;;;;
target = 'phl2525'
bin = 3
tag = 'bin3'

path = '../data/cos_phl2525/'
chan = 3
grat = 'both'

coadd_x1d, wave, flux, err, path=path, chan=chan, bin=bin, plot=2
figname = target+'_'+grat+'_coadd_x1d_'+tag+'.png'
saveimage, figname, /png
spec = {WAVE:wave,  FLUX:flux, ERROR:err}
fitsfile = target+'_'+grat+'_coadd_x1d_'+tag+'.fits'
mwrfits, spec, fitsfile, /create, /silent

;;;;;;; night only ;;; 
target = 'phl2525'
bin = 1
tag = 'bin1'

path = '../nightonly/'
chan = 3
grat = 'both'

coadd_x1d, wave, flux, err, path=path, chan=chan, bin=bin, plot=2
figname = target+'_'+grat+'_coadd_x1d_'+tag+'_nightonly.png'
saveimage, figname, /png
spec = {WAVE:wave,  FLUX:flux, ERROR:err}
fitsfile = target+'_'+grat+'_coadd_x1d_'+tag+'_nightonly.fits'
mwrfits, spec, fitsfile, /create, /silent

