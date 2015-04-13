select distinct Num from (
    select
        Num,
        case
            when @prevNum = Num then @count := @count + 1
            when (@prevNum := Num) is not null then @count := 1
        end n
    from Logs, (select @prevNum := NULL) r
    order by Id
) a where n >= 3
