cd /d "c:\Users\allan\Desktop\projet m2\1 - Core IT\AI\Dockerfile_ML"
cmd /c "docker build -t jupyter_for_ml ." 
cmd /c "docker run -d --name JupyterForMLContainer -p 8888:8888 -h 127.0.0.1 jupyter_for_ml"