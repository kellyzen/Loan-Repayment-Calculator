loan= 10000;
interest_rate= 0.015;
payment= 1000;
balance= 10000;
total_interest= 0;
done= 0;

while ~done
    if balance <= payment
        interest= 0;
        payment= balance;
        done= 1;
    else
        payment= 1000;
        interest= balance*interest_rate/12;
    end
    principal= payment-interest;
    ending_balance= balance- principal;
    balance= ending_balance;
    total_interest= total_interest + interest;
    
    %disp(table(balance, principal, total_interest))
    array= [balance, principal, total_interest];
    disp(num2str(array))
    
end

% LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
% Age = [38;43;38;40;49];
% Smoker = logical([1;0;1;0;1]);
% Height = [71;69;64;67;64];
% Weight = [176;163;131;133;119];
% BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
% 
% disp(table(LastName,Age,Smoker,Height,Weight,BloodPressure))


% for i = 1:5
%     LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
%     Age = [38;43;38;40;49];
%     Smoker = logical([1;0;1;0;1]);
%     Height = [71;69;64;67;64];
%     Weight = [176;163;131;133;119];
%     BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
%     T = table(LastName(i),Age(i),Smoker(i),Height(i),Weight(i),BloodPressure(i))
% end