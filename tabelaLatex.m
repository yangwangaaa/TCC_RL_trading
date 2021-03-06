function tabelaLatex(vec1, vec2, ID)

fprintf(ID,['\\begin{table}[tbp]\n'...
            '\\begin{center}\n'...
            '\\caption{Relat�rio Comparativo de estrat�gias}\n'...
            '\\label{tab:relat}\n'...
            '\\begin{tabular}{l|r|r}\n'...
            '\\hline Estrat�gia de entrada & Sistema Inteligente & Sistema Classico\\\\ \n']);
fprintf(ID, '\\hline Instrumento usado: & %s & %s\\\\ \n',vec1{1}, vec2{1});
fprintf(ID, '\\hline Granularidade: & %s & %s\\\\ \n',vec1{2}, vec2{2});
fprintf(ID, '\\hline Data de inicio: & %s & %s\\\\ \n \\hline Data de termino: & %s & %s\\\\ \n '...
    ,vec1{3}, vec2{3},vec1{4}, vec2{4});
fprintf(ID, '\\hline Lucro Total: & R\\$ %.2f  & R\\$ %.2f \\\\ \n \\hline Lucro Bruto: &  R\\$ %.2f  &  R\\$ %.2f \\\\ \n \\hline Preju�zo Bruto: &  R\\$ %.2f  &  R\\$ %.2f \\\\ \n',...
    vec1{5}, vec2{5},vec1{6}, vec2{6},vec1{7}, vec2{7});
fprintf(ID, '\\hline Fator de Lucro: & %.2f & %.2f\\\\ \n\\hline N�mero Total de Opera��es: & %d & %d\\\\ \n',...
    vec1{8}, vec2{8},vec1{9}, vec2{9});
fprintf(ID, '\\hline Percentual de Vencedoras: & %.2f \\%% & %.2f \\%% \\\\ \n \\hline Opera��es Vencedoras: &%d&%d\\\\ \n',...
    vec1{10}, vec2{10},vec1{11}, vec2{11});
fprintf(ID, '\\hline Opera��es Perdedoras: &%d&%d\\\\ \n\\hline Lucro M�dio Total: & R\\$ %.2f & R\\$ %.2f \\\\ \n',...
    vec1{12}, vec2{12},vec1{13}, vec2{13});
fprintf(ID, '\\hline Lucro M�dio das Vencedoras: & R\\$ %.2f & R\\$ %.2f \\\\ \n\\hline Preju�zo M�dio das Perdedoras:  & R\\$ %.2f & R\\$ %.2f \\\\ \n',...
    vec1{14}, vec2{14},vec1{15}, vec2{15});
fprintf(ID, '\\hline Raz�o M�dia Vencedoras/M�dia Perdedoras: & %.2f & %.2f\\\\ \n \\hline Maior Opera��o Vencedora: &  R\\$ %.2f  &  R\\$ %.2f \\\\ \n',...
        vec1{16}, vec2{16},vec1{17}, vec2{17});
fprintf(ID, '\\hline Pior Opera��o Perdedora: &  R\\$ %.2f  &  R\\$ %.2f \\\\ \n\\hline Maior N�mero de Vit�rias Consecutivas: & %d & %d\\\\ \n',...
        vec1{18}, vec2{18},vec1{19}, vec2{19});
fprintf(ID, '\\hline Maior N�mero de Derrotas Consecutivas: & %d &%d\\\\ \n \\hline M�dia de Tempo das Opera��es: & %.2f & %.2f\\\\ \n',...
        vec1{20}, vec2{20},vec1{21}, vec2{21});
fprintf(ID, '\\hline M�dia de Tempo das Opera��es Vencedoras: & %.2f & %.2f \\\\ \n \\hline M�dia de Tempo das Opera��es Perdedoras: &%.2f  & %.2f\\\\ \n',...
        vec1{22}, vec2{22},vec1{23}, vec2{23});
fprintf(ID, '\\hline Sharpe Ratio: & %f &  %f \\\\ \n',vec1{24}, vec2{24});
fprintf(ID, '\\hline Estrategia Buy and Hold no mesmo periodo: &  R\\$ %.2f  &  R\\$ %.2f  \\\\ \n',vec1{25}, vec2{25});
fprintf(ID, ['\\hline'...
                     '\\end{tabular}'...
                    '\\end{center}'...
                    '\\end{table}']);
end