const puppeteer = require('puppeteer');
const main = (async (url) => {
  const browser = await puppeteer.launch({
    args: ['--no-sandbox', '--disable-setuid-sandbox', '--single-process', '--no-zygote',
           '--disable-gpu', '--disable-dev-shm-usage', '--no-first-run'],
    ignoreHTTPSErrors: true,
    devtools: false,
    headless: true,
  });
  const page = await browser.newPage();
  page.on('console', msg => console.log(msg.text()));
  await page.goto(url)
  await page.waitFor(30000)
  await browser.close()
})
main(process.argv[2])
