use gamersclub;
select * from matchmaking_stats_summary;
# Para aquecimento:

  #  1. Quantos usuários únicos não jogaram após o dia 03/02/2020? R: 995

select count(distinct player_id) as contagem
	from matchmaking_stats_summary
		where created_at > '2020-02-03 23:59:59';

  # 2. Quantos usuários únicos jogaram em fevereiro após o dia 06/02/2020? R: 0

select count(distinct player_id) as contagem
	from matchmaking_stats_summary
		where created_at > '2020-02-06 23:59:59';
    
  
   # 3. Em qual dia mais jogadores deixaram de jogar no mês de fevereiro? R: 2020-02-03

select created_at, count(created_at) as registros 
	from matchmaking_stats_summary
		group by date(created_at)
		order by registros asc limit 1;
        
        
        


