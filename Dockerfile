FROM ruby:latest

RUN apt update -y && apt upgrade -y
RUN apt install -y git
RUN apt install -y valgrind
RUN rm -rf /var/lib/apt/lists/* 
RUN git clone https://github.com/42Paris/norminette.git .norminette/
WORKDIR .norminette/
RUN bundle
RUN echo '/.norminette/norminette.rb' > /usr/bin/norminette && chmod +x /usr/bin/norminette
CMD ["bash"]
