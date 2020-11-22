FROM jiapantw/jq-alpine
LABEL author="WiTCOM GmbH"

COPY entrypoint.sh ./

ENTRYPOINT [ "./entrypoint.sh" ]