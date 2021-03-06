
insert into tb_player_match_stats(
	player_id,
	id_squad_round,
	clean_sheets,
	game_started,
	goals_against_gk,
	minutes,
	pens_allowed,
	pens_att_gk,
	pens_missed_gk,
	pens_saved,
	position,
	save_pct,
	saves,
	shots_on_target_against,
	assists,
	assists_per90,
	cards_red,
	cards_yellow,
	crosses,
	fouled,
	fouls,
	games,
	games_starts,
	goals,
	goals_assists_pens_per90,
	goals_assists_per90,
	goals_pens_per90,
	goals_per90,
	interceptions,
	offsides,
	own_goals,
	pens_att,
	pens_conceded,
	pens_made,
	pens_won,
	shots_on_target,
	shots_total,
	tackles_won,
	bench_explain
)
select 
  player_id,
  id_squad_round,
  clean_sheets,
  game_started,
  goals_against_gk,
  minutes,
  pens_allowed,
  pens_att_gk,
  pens_missed_gk,
  pens_saved,
  position,
  save_pct,
  saves,
  shots_on_target_against,
  assists,
  assists_per90,
  cards_red,
  cards_yellow,
  crosses,
  fouled,
  fouls,
  games,
  games_starts,
  goals,
  goals_assists_pens_per90,
  goals_assists_per90,
  goals_pens_per90,
  goals_per90,
  interceptions,
  offsides,
  own_goals,
  pens_att,
  pens_conceded,
  pens_made,
  pens_won,
  shots_on_target,
  shots_total,
  tackles_won,
  bench_explain
from stage_players as sp
join tb_squad as s
	on sp.squad=s.squad_name
join tb_squad_round as sr
	on s.squad_id=sr.squad_id
	and sp.round=sr.round;