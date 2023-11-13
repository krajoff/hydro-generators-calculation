function h = lossesPartialLoad(hi, sfile)
    feature('DefaultCharacterSet', 'windows-1251');
    load(sfile, '*');
    
    h = [hi, '<table class="cwdtable">\n'];
    h = [h, addTr('boldtype', ['��� ��� ��������� ��������� ' ...
        '� ������������ �������� ' sprintf('%.2f', cosnom)])];
    
    head = {'����������', '�������� ���������', '�� �����������', ...
        '������� �����������', '������', '��� �����������', ...
        '����.�����������', '���'};
    trc = '<tr class="heighttr">\n';
        h = [h trc addTd('class=rotate-sm-90', '������')];
        for i = 1:length(head)
            h = [h addTd('class=rotate-sm-90', head{i})];
        end
    h = [h '</tr>'];
    for i = 1:length(kvd)
        h = [h trc];
        h = [h addTd('kvd', kvd(i)) addTd('pqpost', pqpost) ...
               addTd('pkzkvd', pkzkvd(i)) addTd('pqwed', pqwed(i)) ...
               addTd('pqsed', pqsed(i)) addTd('pqwed', pqwed(i)) ...
               addTd('ied', ied(i)) addTd('uuf', urotfi(i)) ...
               addTd('kpdd', kpdd(i))];
        h = [h '</tr>'];
    end    

    h = [h, addTr('boldtype', ['��� ��� ��������� ��������� ' ...
        '� ������������ �������� 1.00'])];
    for i = 1:length(kvd)
        h = [h trc];
        h = [h addTd('kvd', kvd(i)) addTd('pqpost', pqpost) ...
               addTd('pkzkvd', pkzkvd(i)) addTd('pqwed', pqwe1d(i)) ...
               addTd('pqsed', pqse1d(i)) addTd('pqwed', pqwe1d(i)) ...
               addTd('ied', ie1d(i)) addTd('uuf', urot1(i)) ...
               addTd('kpdd', kpd1d(i))];
        h = [h '</tr>'];
    end    
    h = [h, '</table>'];    
    
    h = [h, '<div style="break-after:page"></div>\n'];
end