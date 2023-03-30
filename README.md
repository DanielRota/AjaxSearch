Daniel Rota 5IC 2022/2023 Tecnologie e Progettazione di Sistemi Informatici

<h1> AJAX </h1>

<h2>INTRODUZIONE</h2>

L'applicativo didattico ha lo scopo di illustrare il funzionamento della tecnologia Ajax, in grado di eseguire chiamate ad un Server locale o remoto, e restituire la rispettiva <i>response</i> in tempo reale; questo viene effettuato utilizzando lato Server il linguaggio PHP, incaricato di sviluppare la logica del software stesso.

In particolare, il software permette la ricerca filtrata di una serie di prodotti, appartententi a un'azienda informatica, tramite l'inserimento del codice di ognuno di questi. 
L'inserimento di testo all'interno della casella, è regolato dall'evento 'input' di JavaScript, che scatena ogni volta la richiesta Ajax da parte del Client, restituendo un prodotto avente <i>key</i> quanto più possibile simile all'input inserito.

<h2>FUNZIONAMENTO</h2>

La comunicazione Http mediante un Client e un Server si articola nei seguenti passi:

1. Il Client stabilisce una connessione <i>TCP</i> con il servente;
2. Questo accetta la richiesta, e stabilisce un legame persistente o meno, a seconda della versione del protocollo Http utilizzato;
3. Il Client è d'ora in poi in grado di richiedere risorse alla macchina remota tramite un <i>Browser</i>, specificando <i>verbo</i>eventuali dati in input e headers;
4. Dopo aver inviato la <i>request</i>, il Server controlla nei propri <i>file di default</i> la presenza del file richiesto, se lo trova e si tratta di una risorsa <i>.html</i>, <i>.css</i> o <i>.js</i>, questa viene direttamente inviata al Client, che la eseguirà sulla propria macchina, in caso contrario verrà prima mandata ad un <i>Server applicativo</i>, programma in grado di tradurre suddetto file in linguaggio macchina, e solo allora lo invierà al Client.
5. Considerando lo stesso meccanismo, ma eseguito tramite Ajax o Fetch, il risultato sarà l'isstantanea visualizzazione della risorsa richiesta sulla macchina del host chiamante.

Grazie alla tecnologia Ajax, è possibile quindi ceare una richiesta Http esplicita, che verrà recapitata all'indirizzo inserito all'interno del <i>body</i> della stessa. La richiesta viene scritta mediante il linguaggio JavaScript, capace di gestire e manipolare le azioni eseguite all'interno del Client-side.

<h2>STRUTTURA</h2>

Il software presenta una classe <i>class.php</i>, contenente una serie di metodi dediti alla connessione al DataBase SQL esterno tramite connessione PDO, e alla ricerca, tramite interrogazioni Query, di prodotti all'interno del DataBase sulla base del parametro in ingresso. Vi è poi il file <i>api.php</i>, parte fondante dell'architettura API Rest dell'applicativo, utilizzata per la ricezione della risposta da parte del Server, la sua codifica in formato Json, e il suo invio alla pagina successiva, ovvero <i>action.php</i>. Questa, dopo la ricezione della request da parte del Client, esegue <i>fetch_all()</i> piuttosto che <i>fetch_single()</i>, sulla base dell'<i>action</i> in ingresso, rappresentante la volontà da parte dell'utente di ottenere tutti i dati del DataBase o di voler visualizzare solo quelli coerenti con l'input specificato. Infine, la struttura grafica del programma è costituita da <i>index.html</i>, contenente una table per la visualizzazione dei risultati e l'input per la ricezione del codice, oltre ovviamente agli script Ajax per l'invio delle request.
