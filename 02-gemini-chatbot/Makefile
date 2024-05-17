
init:
# so I only use one not 10! i have a feeling this choice will come to bite me :P
#	ln -s ../.venv/
	python3 -m venv .venv/
	source .venv/bin/activate

Gemini-Chatbot-Interface-with-Streamlit-copy:
	git clone  https://github.com/ilhansevval/Gemini-Chatbot-Interface-with-Streamlit Gemini-Chatbot-Interface-with-Streamlit-copy/
	pip3 install -r Gemini-Chatbot-Interface-with-Streamlit-copy/requirements.txt

install:
	pip3 install streamlit
	pip install python-dotenv # dont ask me why without 3 but it works on my Mac.
# brew install python-dotenv # on Mac
	pip3 install -r Gemini-Chatbot-Interface-with-Streamlit-copy/requirements.txt
run:
	cd Gemini-Chatbot-Interface-with-Streamlit-copy/ && streamlit run app_chat.py

# PROMPT="""Scrivimi una finta conversazione tra due persone in gaelico che si chiedono cosa fare stasera e magari andare ad ascoltare una musica tradizional al pub stasera, tutto in gaelico ma con traduzione in italiano tra parentesi."""
clean:
	rm -rf Gemini-Chatbot-Interface-with-Streamlit-copy/data/
