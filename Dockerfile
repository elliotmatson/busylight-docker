FROM python:latest

RUN cat /etc/os-release
RUN python3 -m pip install busylight-for-humans[webapi]

EXPOSE 8000

CMD ["busyserve", "-D"]
