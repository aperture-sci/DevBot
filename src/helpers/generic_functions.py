from datetime import datetime


def timestamp() -> str:
    now = datetime.now()
    return now.strftime('%Y-%m-%d_%H-%M-%S')
