# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class WebSocket(Component):
    """A WebSocket component.


Keyword arguments:

- id (string; optional)

- autoReconnect (boolean; default True)

- close (dict | string; optional)

- error (dict | string; optional)

- kill (dict | string; optional)

- kill_and_restart (dict | string; optional)

- maxReconnectAttempts (number; default 5)

- message (dict | string; optional)

- pingInterval (number; default 30000)

- protocols (list of strings; optional)

- reconnect (dict | string; optional)

- reconnectInterval (number; default 5000)

- restart (dict | string; optional)

- send (dict | string; optional)

- state (dict | string; default {readyState: WebSocket.CONNECTING})

- url (string; optional)"""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'dash_extensions'
    _type = 'WebSocket'
    @_explicitize_args
    def __init__(self, state=Component.UNDEFINED, message=Component.UNDEFINED, error=Component.UNDEFINED, send=Component.UNDEFINED, close=Component.UNDEFINED, reconnect=Component.UNDEFINED, kill=Component.UNDEFINED, restart=Component.UNDEFINED, kill_and_restart=Component.UNDEFINED, autoReconnect=Component.UNDEFINED, reconnectInterval=Component.UNDEFINED, maxReconnectAttempts=Component.UNDEFINED, pingInterval=Component.UNDEFINED, url=Component.UNDEFINED, protocols=Component.UNDEFINED, id=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'autoReconnect', 'close', 'error', 'kill', 'kill_and_restart', 'maxReconnectAttempts', 'message', 'pingInterval', 'protocols', 'reconnect', 'reconnectInterval', 'restart', 'send', 'state', 'url']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'autoReconnect', 'close', 'error', 'kill', 'kill_and_restart', 'maxReconnectAttempts', 'message', 'pingInterval', 'protocols', 'reconnect', 'reconnectInterval', 'restart', 'send', 'state', 'url']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        super(WebSocket, self).__init__(**args)
