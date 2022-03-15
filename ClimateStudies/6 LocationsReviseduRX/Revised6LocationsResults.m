%% Ryan Dailey - ANS Summer 2022 Graphs
clear;clf;
LCOE = 1000*[0.2116 0.2914 0.1649 0.4039 0.2 0.1369;         ... %matrix of LCOEs case 1 Dfb | Csb | BSk | Dfc | Cfa | Bsh
        0.06938 0.06934 0.06471 0.07186 0.06523 0.06258; ... %case 2
        0.1213 0.1267 0.1065 0.1398 0.1017 0.1031;    ... %case 3
        0.172 0.1907 0.1403 0.2015 0.1633 0.1321;         ];   %case 4
NCap = [0 0 0 0 0 0;                                    ... %matrix of NCap case 1 Dfb | Csb | BSk | Dfc | Cfa | Bsh
        5 5 4 5 5 4 ;                                   ... %case 2
        4 4 3 4 4 3 ;                                   ... %case 3
        3 4 3 4 3 2 ;                                  ];   %case 4
SCap = [39.667 79.977 18.635 58.545 51.209 28.597  ;    ... %matrix of SCap case 1 Dfb | Csb | BSk | Dfc | Cfa | Bsh
        8 8 7.362 7.176 8.407 7.629;             ... %case 2
        13.815 16.5 14.695 23 13 10.385   ;       ... %case 3
        28.267 14.45 11.62 20.878 20.559 12.332  ;       ];   %case 4
WCap = [30 18 15 42 15 10.5 ;                           ... %matrix of WCap case 1 Dfb | Csb | BSk | Dfc | Cfa | Bsh
        0 0 4.5 0 0 4.5    ;                                ... %case 2
        6 0 6 0 0 6    ;                          ... %case 3
        12 0 10.5  7.5 4.5 10.5 ;        ];   %case 4
BCap = [80.792 137.484 97.842 217.574 92.327 70.361 ;   ... %matrix of BCap case 1 Dfb | Csb | BSk | Dfc | Cfa | Bsh
        2 1.875 6.494 1.383 1.641 5.157  ;          ... %case 2
        10.887 14.375 18.203 17.274 15 19.651  ;        ... %case 3
        32.379 23.063 25.729 18.167 31.915 35.767 ;        ];   %case 4
XLabel = categorical({'Dfb - Ashland, WI', 'Csb - Corvallis, OR', 'Bsk - Blaine County, MT', 'Dfc - Eielson AFB', 'Cfa - NOLA', 'Bsh - Midland, TX'});
XLabel = reordercats(XLabel,{'Dfb - Ashland, WI', 'Csb - Corvallis, OR', 'Bsk - Blaine County, MT', 'Dfc - Eielson AFB', 'Cfa - NOLA', 'Bsh - Midland, TX'});
    
%% Plotting
figure(1)
bar(XLabel,LCOE)
grid on
legend('Case 1 - No Nuclear','Case 2 - Low Nuclear', 'Case 3 - Median Nuclear', 'Case 4 - High Nuclear')
ylabel('LCOE [$/MWh]')
xlabel('Cases 1, 2, 3, and 4 for each Köppen Climate Classification')
title(' LCOE vs. Location/Case Combination')

figure(2)
bar(XLabel,NCap(2:4,:))
grid on
legend('Case 2 - Low Nuclear', 'Case 3 - Median Nuclear', 'Case 4 - High Nuclear')
ylim([0 6])
ylabel('Nuclear Capacity [MWe]')
xlabel('Cases  2, 3, and 4 for each Köppen Climate Classification')
title(' Nuclear Capacity vs. Location/Case Combination')

figure(3)
bar(XLabel,SCap)
grid on
legend('Case 1 - No Nuclear','Case 2 - Low Nuclear', 'Case 3 - Median Nuclear', 'Case 4 - High Nuclear')
ylabel('Solar Capacity [MWe]')
xlabel('Cases 1, 2, 3, and 4 for each Köppen Climate Classification')
title(' Solar Capacity vs. Location/Case Combination')

figure(4)
bar(XLabel,WCap)
grid on
legend('Case 1 - No Nuclear','Case 2 - Low Nuclear', 'Case 3 - Median Nuclear', 'Case 4 - High Nuclear')
ylabel('Wind Capacity [MWe]')
xlabel('Cases 1, 2, 3, and 4 for each Köppen Climate Classification')
title(' Wind Capacity vs. Location/Case Combination')

figure(5)
bar(XLabel,BCap)
grid on
legend('Case 1 - No Nuclear','Case 2 - Low Nuclear', 'Case 3 - Median Nuclear', 'Case 4 - High Nuclear')
ylabel('Battery Capacity [MWh]')
xlabel('Cases 1, 2, 3, and 4 for each Köppen Climate Classification')
title(' Battery Capacity vs. Location/Case Combination')


