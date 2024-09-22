import subprocess

__all__ = ()

def get_zoxide_binary_path():
    path = $(which zoxide)
    if not path:
        raise Exception("Could not determine path of zoxide using `which`; maybe it is not installed or not on PATH?")
    return path


def _zoxide_picker():
    choice = subprocess.run([get_zoxide_binary_path(), "query", "-i"], stdout=subprocess.PIPE, universal_newlines=True).stdout.strip()
    return choice

@events.on_ptk_create
def custom_keybindings(bindings, **kw):
    from prompt_toolkit.filters import EmacsInsertMode, ViInsertMode

    try:
        from xonsh.shells.ptk_shell.key_bindings import carriage_return
    except ImportError:
        from xonsh.ptk_shell.key_bindings import carriage_return

    def handler(key_name):
        def do_nothing(func):
            pass

        key = ${...}.get(key_name)
        if key:
            return bindings.add(key)
        return do_nothing

    @handler('zoxide_pick_dir')
    def zoxide_pick_dir(event):
        choice = _zoxide_picker()

        if choice:
            cd @( choice )
            carriage_return(event.app.current_buffer, event.cli)

