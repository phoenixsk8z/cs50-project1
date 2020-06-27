import os
import tempfile

import pytest

from project1 import project1

@pytest.fixture
def client():
    db_fd, project1.app.config['DATABASE'] = tempfile.mkstemp()
    project1.app.config['TESTING'] = True

    with project1.app.test_client() as client:
        with project1.app.app_context():
            project1.init_db()
        yield client

    os.close(db_fd)
    os.unlink(project1.app.config['DATABASE'])