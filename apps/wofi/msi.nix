# Конфигурация wofi для MSI
# здесь захардкожены пиксели, на монитор другого размера придётся подгонять

{ config, lib, pkgs, ... }: {
    programs.wofi = {
    	enable = true;
	settings = {
	    show = "run";
	    xoffset = 1500;
	    yoffset = 9;
	    width = 230;
	    height = 1066;
	    term = "alacritty";
	    prompt = " run";
	};
	style = ''
	    * { 
	        all: unset;
		    font-family: "JetBrainsMono";
    		font-size: 12px;
	    }
	    
	    #window {
	        background-color: #292a37;
    		border-radius: 0px;
	    }

	    #outer-box {
	        background-color: #292a37;
    		border: 3px solid #44465c;
	    	border-radius: 0px;
	    }

	    #input {
	        margin: 1rem;
    		padding: 0.5rem;
	    	border-radius: 0px;
	    	background-color: #303241;
	    }

	    #entry {
	        margin: 0.25rem 0.75rem 0.25rem 0.75rem;
	        padding: 0.25rem 0.75rem 0.25rem 0.75rem;
    		color: #9699b7;
	    	border-radius: 0px;
	    }

	    #entry:selected {
	        background-color: #303241;
    		color: #d9e0ee;
	    }

	'';
    };
}
