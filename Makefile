

install:
	python -m venv .venv
	source .venv/bin/activate
	pip install streamlit
	pip install watchdog

hello:
	streamlit run hello

# https://github.com/streamlit/demo-self-driving
udacity-cars:
	pip install --upgrade streamlit opencv-python
	streamlit run https://raw.githubusercontent.com/streamlit/demo-self-driving/master/streamlit_app.py

# https://github.com/streamlit/demo-uber-nyc-pickups
uber-pickups:
# pip install --upgrade streamlit
	streamlit run https://raw.githubusercontent.com/streamlit/demo-uber-nyc-pickups/main/streamlit_app.py
