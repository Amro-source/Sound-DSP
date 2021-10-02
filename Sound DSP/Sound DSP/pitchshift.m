
% wav file in PCM forma to morph
% frequency shiftiting
function newcoeff=pitchshift(coeff,nshift)
%frequency will be cutt off due to the window size
N=length(coeff);
Nhalf=floor(N/2);
% make a new coefficient matrix composed by zeros
newcoeff=zeros(size(coeff));
% the DC component must be preserved!
newcoeff(1)=coeff(1);
% the even frequency must be copied
newcoeff(Nhalf+1)=coeff(Nhalf+1);
% if frequencies are shifted up
if(nshift>0 && nshift<Nhalf)
    newcoeff(nshift+1:Nhalf) = coeff(2:Nhalf-nshift+1);
    newcoeff(Nhalf+2:N)= conj(newcoeff(2:Nhalf));
    % if frequencies are shifted down
elseif(nshift<0 && nshift>floor(-N/2))

else
    fprintf('Frequency shift is not possible.\n')

end

