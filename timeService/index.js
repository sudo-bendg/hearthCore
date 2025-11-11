const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

const router = express.Router();

router.use((req, res, next) => {
    console.log(`Request received: ${req.method} ${req.url}`);
    next();
});


router.get('/time', (req, res) => {
    const currentTime = new Date();
    res.json({ time: `${currentTime.getHours()}:${currentTime.getMinutes()}:${currentTime.getSeconds()}` });
});

router.get('/date', (req, res) => {
    const currentDate = new Date();
    res.json({ date: `${currentDate.getDate()}/${currentDate.getMonth() + 1}/${currentDate.getFullYear()}` });
});

router.use('/', (req, res) => {
    res.status(404).json({ error: 'Not Found' });
});

app.use('/', router);

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});