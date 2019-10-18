class SpaceAge

  PLANET_TO_SOLAR_YEAR_IN_SECONDS = { earth: 31_557_600.00_033_216,
                                      jupiter: 374_355_659.124,
                                      mars: 59_354_032.69_008,
                                      mercury: 7_600_543.82,
                                      neptune: 5_200_418_560.032,
                                      saturn: 929_292_362.88_48,
                                      uranus: 2_651_370_019.32_96,
                                      venus: 19_414_149.1 }



  PLANET_TO_SOLAR_YEAR_IN_SECONDS.each_key do |planet|
    define_method "on_#{planet}" do
      age_in_seconds / PLANET_TO_SOLAR_YEAR_IN_SECONDS[planet]
    end
  end

  private

  attr_reader :age_in_seconds

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end
end









