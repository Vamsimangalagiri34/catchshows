// client.js
async function getData() {
  try {
    const response = await fetch('http://localhost:3000/getData'); // Corrected endpoint URL
    const data = await response.json();
    document.getElementById('result').innerText = JSON.stringify(data, null, 2);
  } catch (error) {
    console.error(error);
  }
}
