VARIABLE_QUESTIONS = [
  # {
  #   possible_variable_names: [
  #     "sampled_key"
  #   ],
  #   possible_variable_values: [
  #     :username,
  #     :age,
  #     :first_name,
  #     :last_name,
  #     :email_address,
  #     :album_count,
  #     :year_of_birth
  #   ]
  # }
  {
    possible_variable_names: [
      "fish_count",
      "cat_count",
      "user_count",
      "number_of_dogs",
      "num_steaks",
      "fav_number",
      "lucky_number",
      "head_count",
      "consecutive_wins",
      "consecutive_losses",
      "unlucky_number",
      "days_without_rain",
      "years_without_championship",
    ].shuffle,
    possible_variable_values: (1..100).to_a.shuffle,
  },
  {
    possible_variable_names: [
      "signed_in",
      "authenticated",
      "authorized",
      "heartbroken",
      "ecstatic",
      "admin_user",
      "likes_dogs",
      "takes_baths",
      "can_swim",
      "can_ride_a_bike",
      "tells_lies",
      "is_homeowner",
      "password_verified",
      "has_drivers_license",
      "orphaned",
      "steals_candy",
      "has_cold",
      "athletic",
      "docile",
    ].shuffle,
    possible_variable_values: [true, false].shuffle,
  },
  {
    possible_variable_names: [
      "time_abroad",
      "period_married",
      "waiting_period",
      "sentence_length",
      "tenure",
      "life_span",
      "term_length",
      "time_in_office",
      "incumbency",
      "stint_length",
    ].shuffle,
    possible_variable_values: [
      "too short",
      "much too long",
      "None, thank god.",
      "brief",
      "fleeting",
      "short-lived",
      "everlasting",
      "overlong",
      "unending",
      "#{rand(2..11)} months",
      "#{rand(2..11)} months",
      "#{rand(2..11)} months",
      "#{rand(2..20)} years",
      "#{rand(2..20)} years",
      "#{rand(2..20)} years",
      "#{rand(2..6)} days",
      "#{rand(2..6)} days",
      "#{rand(2..6)} days",
    ].uniq.shuffle,
  },
  {
    possible_variable_names: [
      "pilot_name",
      "point_guard",
      "gardener",
      "cook",
      "chef",
      "boss",
      "rival",
      "opponent",
      "foe",
      "partner",
      "teammate",
      "collaborator",
      "subordinate",
      "server",
      "trooper",
      "peacekeeper",
      "best_friend",
      "worst_enemy",
      "oldest_friend",
      "nemesis",
      "comrade",
      "team_captain",
      "instructor_name",
      "friend_for_life",
      "thief",
      "dancer",
      "lead_singer",
      "drummer",
      "guitarist",
      "bassist",
    ].shuffle,
    possible_variable_values: $random_names_array.shuffle
  },
  {
    possible_variable_names: [
      "percentage_gold",
      "test_score",
      "top_test_score",
      "top_score",
      "low_score",
      "divisor",
      "multiple",
      "sum",
      "dividend",
      "total",
      "share_percentage",
      "percentage_gained",
      "percentage_lost",
    ].shuffle,
    possible_variable_values: [
      "n/a",
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
      rand(0.0..99.9).round([2, 3].sample),
    ].shuffle,
  },
]