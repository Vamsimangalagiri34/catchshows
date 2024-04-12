const seatContainer = document.getElementById('seats-container');
const numRows = 10; // Number of rows
const numCols = 14; // Number of columns
const numSeats = numRows * numCols;

// Generate seats and row labels
for (let i = 0; i < numRows; i++) {
    const rowLabel = String.fromCharCode('A'.charCodeAt(0) + i); // Get the character for each row

    // Create a row container for each row
    const row = document.createElement('div');
    row.className = 'row';

    // Create a div for the row label
    const label = document.createElement('div');
    label.className = 'row-label';
    label.innerText = rowLabel + '-';

    // Append the label to the row container
    row.appendChild(label);

    // Generate seats for the row
    for (let j = 1; j <= numCols; j++) {
        const seat = document.createElement('div');
        seat.className = 'seat';

        // Set seat ID and text with row label and column number
        seat.id = 'seat-' + rowLabel + '-' + j;
        seat.innerText = j;

        seat.addEventListener('click', () => toggleSeat(seat));

        // Add margin after every seat except the last one in the row
        if (j !== numCols) {
            seat.style.marginRight = '5px';
        }

        // Append each seat to the row container
        row.appendChild(seat);

        // Check for the 9th row and the 6th column to add the "Gold" label horizontally
        for(let i=1;i<=14;i++){
             if(i==1 && j==4 || (i==5 && j==10) || (i==11 && j==14)){
            const goldLabel = document.createElement('div');
            goldLabel.className = 'str1-horizontal';
            goldLabel.innerHTML = "_";
            row.appendChild(goldLabel);

    }
  }
}
if (i === 8) {
  const goldLabel = document.createElement('div');
  goldLabel.className = 'str1';
  goldLabel.innerHTML = "Gold:$295";
  seatContainer.appendChild(goldLabel);
}

if(i==4){
  const normal=document.createElement('div');
  normal.className="str2";
  normal.innerHTML='Normal:$177';
  seatContainer.appendChild(normal);
}
    // Append the row container (with row label and seats) to the seat container
    seatContainer.appendChild(row);
}

function toggleSeat(seat) {
    seat.classList.toggle('selected');
}
