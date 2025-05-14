#include <iostream>
#include <string>

void run_repl(){
    std::cout << "Hello welcome to my first db :3" << std::endl;
    std::cout << "Enter .exit to quit the progrma." << std::endl;

    std::string prompt = "myfirstdb>";
    std::string current_line;
    std::string command_buffer;


    while(true){
        std::cout << prompt << std::flush;
        
        
        // Get user input
        std::getline(std::cin, current_line);

        // Exit if the user types .exit
        if(current_line == ".exit"){
            std::cout << "Exiting myfirstdb :(" << std::endl;
            break;
        }

    }
}
