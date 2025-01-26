
import streamlit as st
from streamlit_option_menu import option_menu

def tabs():
  options = ["Collection", "Question", "Part3", "Part4"]
  icons = ['cloud-upload-fill','gear-fill', 'clipboard-data-fill', 'clipboard-data-fill'] 

  login_menu = option_menu(None, options, 
    icons=icons, 
    menu_icon="cast", 
    key='nav_menu',
    default_index=0, 
    orientation="horizontal"
  )

  login_menu

  if st.session_state["nav_menu"] == "Collection" or st.session_state["nav_menu"] == None:
    pass
  elif st.session_state["nav_menu"] == "Question":
    pass
  elif st.session_state["nav_menu"] == "Part3":
    pass
  elif st.session_state["nav_menu"] == "Part4":
    pass
