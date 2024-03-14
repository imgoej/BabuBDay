#' DoYouHaveWhatItTakes
#' @return A gift
#' @export
DoYouHaveWhatItTakes <- function() {
  # mute warnings
  options(warn=-1)

  # clear console
  cat("\f")

  # initialize count
  count <- 0

  # display pick
  pic <- imager::load.image(system.file("data/sawman.jpg",package = "BabuBDay"))
  p <- ggplot(mapping = aes(1:10, 1:10)) +
    annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
    theme_void()
  print(p)

  # intro
  cat("\nDette er din sidste prøvelse kære lille Babu (som han jo så kærligt kalder dig). Jeg regnede ikke med at du ville nå så langt. Tillykke. Men hvorfor føler jeg mig stadig så selvsikker? I denne prøvelse skal vi se om hvor godt du i virkeligheden kender Frede...")
  cat("\n\nNu vil der komme en lille række spørgsmål og du får 1 point per rigtigt svar. 6/10 og du vil få kodeordet til at vække Frede!\nSkriv dit svar i kommandolinjen og tryk <ENTER>.")

  # Spørgsmål 1
  Q = 1
  cat("\n\nSpørgsmål 1: Hvordan vil du beskrive Frederik? (indtast tallet som svarer til svaret) \n<1> lille. \n<2> gennemsnitlig. \n<3> above average.")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 3) {
    cat("\f")
    pic <- imager::load.image(system.file("data/happy1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    count <- count + 1
    cat("\nNu fik jeg jo nyt tøj på bevidstløse Frede. Jeg må jo sige at emphasis on \"above\".\n +1 point.")

  } else {
    cat("\f")
    pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    cat("\n\n0 point. Det må være lang tid siden hva?..")
  }

  # Spørgsmål 2
  Q = 2
  cat("\n.\n.\n.\n\nSpørgsmål 2: Hvor høj er Frede? (indtast tal i cm - skriv ikke \"cm\")")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 198) {
    cat("\f")
    pic <- imager::load.image(system.file("data/happy2.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    count <- count + 1
    cat("\nSom enhver matematisk korrekt person ville have skrevet det. +1 point.")
  } else {
    cat("\f")
    pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    cat("\n.\n.\n.\n0 point. Av av av... Jeg målte ham til 198 cm til nærmeste tre cifre.\n.\n.\n.")
  }


  # Spørgsmål 3
  Q = 3
  cat("\n.\n.\n.\n \nSpørgsmål 3: En tiger slås med en løve: hvem tror Frede vil vinde i en slåskamp (indtast tallet som svarer til svaret): \n<1> løve. \n<2> tiger.")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 2) {
    cat("\f")
    #pic <- imager::load.image(system.file("data/happy4.jpg",package = "BabuBDay"))
    #p <- ggplot(mapping = aes(1:10, 1:10)) +
    #  annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
    #  theme_void()
    #print(p)
    count <- count + 1
    cat("\nObviously. +1 point.")
  } else {
    cat("\f")
    #pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    #p <- ggplot(mapping = aes(1:10, 1:10)) +
    #  annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
    #  theme_void()
    #print(p)
    cat("\n\n0 point. Av av av... Jeg målte ham præcist til 198 cm.")
  }


  # TODO make plot with comparison pics
  # Spørgsmål 4
  pic <- imager::load.image(system.file("data/Q4.jpg",package = "BabuBDay"))
  p <- ggplot(mapping = aes(1:10, 1:10)) +
    annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
    theme_void()
  print(p)
  Q = 4
  cat("\n.\n.\n.\n \nSpørgsmål 4: Se i grafvinduet. Hvem er flottest? (indtast tallet som svarer til svaret):")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 1) {
    cat("\f")
    pic <- imager::load.image(system.file("data/happy4.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    count <- count + 1
    cat("\nAwww... +1 point.")
  } else {
    cat("\f")
    pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    cat("\n\nDet er muligvis din mening. Nu bliver jeg mere usikker på om du fortjener ham. +0 point.")
  }


  # Spørgsmål 5
  Q = 5
  cat("\n.\n.\n.\n \nSpørgsmål 5: Næste gang at du har muligheden for at ae enten Frede eller Ziggy, hvem aer du så? \n<1> Frede. \n<2> Ziggy.")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 1) {
    cat("\f")
    pic <- imager::load.image(system.file("data/happy5.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    count <- count + 1
    cat("\nLige præcis. +1 point.")
  } else {
    cat("\f")
    pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    cat("\n\nØøøh. Det er jo nærmest attempted murder du har gang i at this point. +0 point.")
  }


  # Spørgsmål 6
  Q = 6
  cat("\n.\n.\n.\n \nSpørgsmål 6: Kunne Frede vinde 1 on 1 imod en ulv? \n<1> Nej. \n<2> Ja.")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 2) {
    cat("\f")
    pic <- imager::load.image(system.file("data/happy6.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    count <- count + 1
    cat("\nLige i skabet. +1 point.")
  } else {
    cat("\f")
    pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    cat("\n\nDet er jo nærmest for din skyld at jeg gør det her imod ham. +0 point.")
  }


  # Spørgsmål 7
  Q = 7
  cat("\n.\n.\n.\n \nSpørgsmål 7: Må man kalde Frede for \"Grisiprutti\"? \n<1> Nej. \n<2> Ja.")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 1) {
    cat("\f")
    pic <- imager::load.image(system.file("data/happy7.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    count <- count + 1
    cat("\nLige i skabet. +1 point.")
  } else {
    cat("\f")
    pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    cat("\n\nDu kan selv være en Grissiprutti! +0 point.")
  }


  # Spørgsmål 8
  Q = 8
  cat("\n.\n.\n.\n \nSpørgsmål 8: Hvad er det nu Frede har ret i. Hvad er det man gently kan bruge til at samle smør op fra smørbakken? \n<1> smørkniv. \n<2> smørgaffel \n<3> begge (slightly bedre med gaffel).")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 3) {
    cat("\f")
    pic <- imager::load.image(system.file("data/happy8.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    count <- count + 1
    cat("\nNu smører du hjulene på den her quiz! +1 point.")
  } else {
    cat("\f")
    pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    cat("\n\nDu har boet sammen med ham så længe, og stadig har du intet lært. +0 point.")
  }


  # Spørgsmål 9
  Q = 9
  cat("\n.\n.\n.\n \nSpørgsmål 9: \"Efter at have været sammen med dig har jeg lært at humor ikke er en vigtig ting for mig.\". Okay... Vælg en af de følgende to svarmuligheder: \n<1> Det er et kompliment, fordi at Frede er SÅ sjov, men også har langt vigtigere kvaliteter. \n<2> Det er et kompliment, fordi at Frede muligvis ikke er sjov, men har langt vigtigere kvaliteter.")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer == 1) {
    cat("\f")
    pic <- imager::load.image(system.file("data/happy9.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    count <- count + 1
    cat("\nGod pige. +1 point.")
  } else {
    cat("\f")
    pic <- imager::load.image(system.file("data/angry1.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
    cat("\n\nSom Bhagwan ville have sagt: +0 point.")
  }


  # Spørgsmål 10
  Q = 10
  cat("\n.\n.\n.\n \nSpørgsmål 10: På en skala fra 1 til 10, hvor god ved dig er Frede?")
  cat("\n\nSvar: ")
  answer <- as.numeric(readline())
  if(answer > 8) {
    cat("\f")
    count <- count + 1
    cat("\nSå du ved det godt. +1 point.")
  } else {
    cat("\f")
    cat(paste("What? ",answer,"? Wow... +0 point.", sep = ""))
  }


  cat("\n.\n. \n. \nEndelig, vi er i mål! Lad os se hvordan du klarede den. \n\n")
  cat(paste("Du fik ", count, " ud af 10 - ", sep = ""))
  if(count >= 6) {
    cat("du gjorde det! Måske fortjener du ham alligevel. Faktisk, nu når jeg tænker over det, så er du måske faktisk for god til ham. Hvornår er det Frede's fødselsdag? \nMen nu får du sidste kode-ord. Du burde kunne se den i grafvinduet.")
    pic <- imager::load.image(system.file("data/code.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)

    # Send mail
    Sys.sleep(5)
    cat("\n\nOkay, min serial-killer kæreste siger at jeg også skal sende noget ekstra med fordi at det er din fødselsdag. Tjek din mail.\n\n")
    file <- system.file("data/blank.pdf",package = "BabuBDay")
    mailR::send.mail(
      from = "fhb@outlook.dk",
      to = "fhb@outlook.dk",
      subject = "You win...",
      body = "See attached.",
      attach.files = file,
      smtp = list(host.name = "smtp.office365.com", port = 587,
                  user.name = "fhb@outlook.dk",
                  passwd = "_Neander8", tls = TRUE),
      authenticate = TRUE,
      send = TRUE
    )
  } else {
    cat("du klarede den ikke! Præcist som jeg tænkte. Han vil for evigt være i koma fra nu af! HA HA HA HA! Jeg kender ikke \"R\" så godt. Man kan ikke bare re-run funktionen vel?")
    pic <- imager::load.image(system.file("data/reaper.jpg",package = "BabuBDay"))
    p <- ggplot(mapping = aes(1:10, 1:10)) +
      annotation_raster(pic, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf) +
      theme_void()
    print(p)
  }


}
