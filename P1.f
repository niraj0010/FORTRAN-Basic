      PROGRAM P1
C     This program performs various unit conversions
      IMPLICIT NONE
      REAL :: pounds, kilograms, feet, meters, fahrenheit, celsius
      INTEGER :: choice

      DO
C     Display conversion options
        PRINT *, 'Enter a conversion option:'
        PRINT *, '----------------------------'
        PRINT *, '(1) Pounds to Kilograms'
        PRINT *, '(2) Kilograms to Pounds'
        PRINT *, '(3) Feet to meters'
        PRINT *, '(4) Meters to feet'
        PRINT *, '(5) Fahrenheit to Celsius'
        PRINT *, '(6) Celsius to Fahrenheit'
        PRINT *, '(0) Exit this program'
        PRINT *, '----------------------------'
        PRINT *, 'Choice: '
        READ *, choice

        SELECT CASE(choice)
          CASE(1)
C         Pounds to Kilograms conversion
            PRINT *, 'Enter pounds: '
            READ *, pounds
            kilograms = pounds * 0.453592
            PRINT *, 'Kilograms: ', kilograms

          CASE(2)
C         Kilograms to Pounds conversion
            PRINT *, 'Enter kilograms: '
            READ *, kilograms
            pounds = kilograms / 0.453592
            PRINT *, 'Pounds: ', pounds

          CASE(3)
C         Feet to Meters conversion
            PRINT *, 'Enter feet: '
            READ *, feet
            meters = feet * 0.3048
            PRINT *, 'Meters: ', meters

          CASE(4)
C         Meters to Feet conversion
            PRINT *, 'Enter meters: '
            READ *, meters
            feet = meters / 0.3048
            PRINT *, 'Feet: ', feet

          CASE(5)
C         Fahrenheit to Celsius conversion
            PRINT *, 'Enter Fahrenheit: '
            READ *, fahrenheit
            celsius = (fahrenheit - 32) * 5.0 / 9.0
            PRINT *, 'Celsius: ', celsius

          CASE(6)
C         Celsius to Fahrenheit conversion
            PRINT *, 'Enter Celsius: '
            READ *, celsius
            fahrenheit = (celsius * 9.0 / 5.0) + 32
            PRINT *, 'Fahrenheit: ', fahrenheit

          CASE(0)
C         Exit the program
            EXIT

          CASE DEFAULT
C         Handle invalid options
            PRINT *, 'Invalid option, try again.'
        END SELECT
      END DO

      END PROGRAM P1



