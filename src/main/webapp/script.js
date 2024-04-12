   <script>
                function showSuggestions(input) {
                    const arr = ["Bhagavath Keasri","Devara", "Salaar", "GameChanger", "Skanda", "Jawan","Project-K","Kerala Story","Kathal","Force-2","IB 7I","Dumb Money","Mojin","Reptile","Titanic"]; // Array of suggestions
                    const suggestionBox = document.getElementById("suggestions");
                    suggestionBox.innerHTML = ''; // Clear previous suggestions
                    if (input.length === 0) {
                        suggestionBox.style.display = 'none'; // Hide suggestion box if input is empty
                        return;
                    }
                    const matchingSuggestions = arr.filter(item => item.toLowerCase().includes(input.toLowerCase()));
                    matchingSuggestions.forEach(suggestion => {
                        const div = document.createElement('div');
                        div.textContent = suggestion;
                        div.addEventListener('click', () => {
                            document.getElementById("data").value = suggestion;
                            suggestionBox.style.display = 'none';
                        });
                        suggestionBox.appendChild(div);
                    });
                    suggestionBox.style.display = 'block'; // Show suggestion box
                }
                function validate() {
                    const d = document.getElementById("data").value;
                    console.log(d);
                }
                function locations(){
                var loc=document.getElementById("locationSelect").value;
                console.log(loc);
                }
            </script>