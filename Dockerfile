FROM homeassistant/home-assistant:latest

ADD https://raw.githubusercontent.com/OpenZWave/open-zwave/master/config/linear/GC-TBZ48.xml /usr/local/lib/python3.5/site-packages/libopenzwave-0.3.3-py3.5-linux-x86_64.egg/config/linear/GC-TBZ48.xml

RUN sed '/<Manufacturer id="014f" name="Linear">/a <Product type="5442" id="5436" name="GC-TBZ48 Thermostat" config="linear\/GC-TBZ48.xml"\/>' /usr/local/lib/python3.5/site-packages/libopenzwave-0.3.3-py3.5-linux-x86_64.egg/config/manufacturer_specific.xml

CMD [ "python", "-m", "homeassistant", "--config", "/config" ]
