
/**
 * writeTextFile write data to file on hard drive
 * @param  string  filepath   Path to file on hard drive
 * @param  sring   output     Data to be written
 */
function writeTextFile(filepath, output) {
    var fs = require('fs');
    var str = JSON.stringify(output, null, 4)
    fs.writeFile(filepath, str ,(err)=>{
        if(err) {
            return console.log(err);
        }   
        console.log("The file was saved!");
    }); 
}

const puppeteer = require('puppeteer');

let scrape = async () => {
    const browser = await puppeteer.launch({headless: false});
    const page = await browser.newPage();

    await page.goto('http://lefaso.net/');

    const result = await page.evaluate(() => {
        let data = []; // Create an empty array that will store our data
        let elements = document.querySelectorAll('h5'); // get main page titles

        for (var element of elements){ // Loop through each titles
            let title = element.innerText; // Select the title
            data.push({title}); // Push an object with the data onto our array
        }
        return data;
    });

    browser.close();
    writeTextFile("/path/to/your/file/",result) // Return our data array
    return result; // Return the data
};

scrape().then((value) => {
    console.log(value); // Success!
});