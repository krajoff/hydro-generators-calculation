function H = mainInfo(hi, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    struct = open(sfile); 
    cd = struct.cd;
    brr = join(repmat('&nbsp',1,2),'');
    H = [hi, '<table class="cwdtable">\n'];
    H = [H, addTr('boldtype', '�������� ������')];
    H = [H, addTr('lnpvd', 'tipmas', strrep(genType, "_", "/"))];
    
    H = [H, addTr('lnpvd', 'snom', snom)];
    H = [H, addTr('lnpvd', 'cosnom', cosnom)];
    H = [H, addTr('lnpvd', 'un', un)];
    H = [H, addTr('lnpvd', 'ifaz', ifaz)];
    H = [H, addTr('lnpvd', 'fn', fn)];
    H = [H, addTr('lnpvd', 'obmin', obmin)];
    H = [H, addTr('lnpvd', 'n2p', n2p)];
    H = [H, addTr('lnpvd', 'ce', ce)];
    H = [H, addTr('lnpvd', 'tau', tau)];
    
    H = [H, addTr('left', '��������� �������')];
    H = [H, addTr('snpvd', 'di', di, brr)];
    H = [H, addTr('snpvd', 'da', da, brr)];
    H = [H, addTr('snpvd', 'ks', ks, brr)];
    H = [H, addTr('snpvd', 'elt', elt, brr)];
    H = [H, addTr('snpvd', 'el', el, brr)];
    H = [H, addTr('snpvd', 'elef', elef, brr)];
    H = [H, addTr('snpvd', 'del', del, brr)];
    H = [H, addTr('snpvd', 'ef', ef, brr)];
    H = [H, addTr('snpvd', 'nr', nr, brr)];
    H = [H, addTr('snpvd', 'brad', brad, brr)];
    H = [H, addTr('snpvd', 'qa', qa, brr)];
    H = [H, addTr('snpvd', 'ha', ha, brr)];
    H = [H, addTr('snpvd', 'ha1', ha1, brr)];
    H = [H, addTr('snpvd', 'la', la, brr)];
    H = [H, addTr('snpvd', 'npaz', npaz, brr)];
    H = [H, addTr('snpvd', 't', t, brr)];
    H = [H, addTr('snpvd', 't3', t3, brr)];
    H = [H, addTr('snpvd', 't2', t2, brr)];
    bc_cc_dc = sprintf('%i+%i/%i', bc, cc, dc);
    H = [H, addTr('snpvd', 'bcspec', bc_cc_dc, brr)];
    H = [H, addTr('snpvd', 'bz', bz, brr)];
    H = [H, addTr('snpvd', 'bz13', bz13, brr)];
    H = [H, addTr('snpvd', 'bz12', bz12, brr)];
    H = [H, addTr('snpvd', 'b1', b1, brr)];
    H = [H, addTr('snpvd', 'h', h, brr)];
    H = [H, addTr('snpvd', 'h1', h1, brr)];
    H = [H, addTr('snpvd', 'qz3', qz3, brr)];    
    H = [H, addTr('snpvd', 'qz2', qz2, brr)];
    H = [H, addTr('snpvd', 'cd', cd, brr)];
    
    H = [H, addTr('left', '������� �������')];
    H = [H, addTr('snpvd', 'i1', i1, brr)];
    H = [H, addTr('snpvd', 'ia', ia, brr)];
    H = [H, addTr('snpvd', 'jja', jja, brr)];
    H = [H, addTr('snpvd', 'nss', nss, brr)];
    H = [H, addTr('snpvd', 'w', w, brr)];
    H = [H, addTr('snpvd', 'a', a, brr)];
    H = [H, addTr('snpvd', 'ela', ela, brr)];
    H = [H, addTr('snpvd', 'els', els, brr)];
    H = [H, addTr('snpvd', 'as', as, brr)];
    H = [H, addTr('snpvd', 'ao', ao, brr)];
    H = [H, addTr('snpvd', 'bo', bo, brr)];
    H = [H, addTr('snpvd', 'ai', ai, brr)];
    H = [H, addTr('snpvd', 'bi', bi, brr)];
    H = [H, addTr('snpvd', 'ra15', ra15, brr)];
    H = [H, addTr('snpvd', 'ra75', ra75, brr)];
    H = [H, addTr('snpvd', 'no', no, brr)];
    H = [H, addTr('snpvd', 'qo', qo, brr)];
    H = [H, addTr('snpvd', 'y', y, brr)];
    H = [H, addTr('snpvd', 'bet', bet, brr)];
    H = [H, addTr('left', [brr '���������� ������������:'])];
    H = [H, addTr('snpvd', 'fq', fq, [brr brr])];
    H = [H, addTr('snpvd', 'ksk', ksk, [brr brr])];
    H = [H, addTr('snpvd', 'fbet', fbet, [brr brr])];
    H = [H, addTr('snpvd', 'fw', fw, [brr brr])];
    
    H = [H, addTr('left', '�����')];
    
    H = [H, addTr('left', '������� �����������')];

    H = [H, '</table>'];    
    H = [H, '<div style="break-after:page"></div>\n'];
end