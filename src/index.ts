import express from 'express';
import {PrismaClient} from "@prisma/client";

const prisma = new PrismaClient();

const app = express();

app.use(express.json());

const prefix = (host: string) => {
    return host.split(".")[0];
}

app.get('/', (req, res) => {
    res.send('Hello World');
})

app.get('/api/products', async (req, res) => {
    const products = await prisma[`${prefix(req.headers.host)}Product`].findMany()

    res.send(products);
})

app.post('/api/products', async (req, res) => {
    const product = await prisma[`${prefix(req.headers.host)}Product`].create({
        data: {
            title: req.body.title,
            price: req.body.price,
        }
    });

    res.send(product);
});

app.listen(8000);
