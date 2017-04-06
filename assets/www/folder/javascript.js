/**
 * This is an example of a basic node.js script that performs
 * the Authorization Code oAuth2 flow to authenticate against
 * the Spotify Accounts.
 *
 * For more information, read
 * https://developer.spotify.com/web-api/authorization-guide/#authorization_code_flowFF
 */
/**
 * This is an example of a basic node.js script that performs
 * the Authorization Code oAuth2 flow to authenticate against
 * the Spotify Accounts.
 *
 * For more information, read
 * https://developer.spotify.com/web-api/authorization-guide/#authorization_code_flow
 */
var express = require('express'); // Express web server framework
var request = require('request'); // "Request" library
var querystring = require('querystring');
var cookieParser = require('cookie-parser');
var Repeat = require('repeat');
ii = 2;
if (ii === 1) {
    var client_id = '71d18cb9b32c480d951eed41512df8fc'; // Your client id
    var client_secret = '2e89cb3f772345279ae54fa417cc7457'; // Your secret
    var redirect_uri = 'http://app.jkbx.us/callback/'; // Your redirect uri
}
else if (ii === 2) {
    var client_id = '71d18cb9b32c480d951eed41512df8fc'; // Your client id
    var client_secret = '2e89cb3f772345279ae54fa417cc7457'; // Your secret
    var redirect_uri = 'https://spartify.herokuapp.com/callback/'; // Your redirect uri
}
else if (ii === 3) {
    var client_id = '71d18cb9b32c480d951eed41512df8fc'; // Your client id
    var client_secret = '2e89cb3f772345279ae54fa417cc7457'; // Your secret
    var redirect_uri = 'http://localhost:8080/callback/'; // Your redirect uri
}

var generateRandomString = function (length) {
    var text = '';
    var possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

    for (var i = 0; i < length; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
};
var nodeSpotifyWebHelper = require('node-spotify-webhelper');
var spotify = new nodeSpotifyWebHelper.SpotifyWebHelper();

// get the name of the song which is currently playing

var stateKey = 'spotify_auth_state';

var app = express();

app.use(express.static(__dirname + '/public'))
    .use(cookieParser());
var bodyParser = require('body-parser');

app.use(bodyParser.json());

app.use(bodyParser.urlencoded({
    extended: false
}));
app.get('/login', function (req, res) {

    var state = generateRandomString(16);
    res.cookie(stateKey, state);

    // your application requests authorization
    var scope = 'user-read-private user-read-email';
    res.redirect('https://accounts.spotify.com/authorize?' +
        querystring.stringify({
            response_type: 'code',
            client_id: client_id,
            scope: scope,
            redirect_uri: redirect_uri,
            state: state
        }));
});

app.get('/choose-a-playlist', function (req, res) {
    res.redirect('/playlists.html');
});
app.get('/details', function (req, res) {
    res.redirect('/welcome.html');
});
app.get('/error', function (req, res) {
    res.redirect('/error.html');
});
app.get('/songUpdate', function (req, res) {
    var song = req.query.track;
    var artist = req.query.artist;
    var user = req.query.user;
    updateSong(song.toString(), artist.toString(), user.toString());
});
app.get('/callback', function (req, res) {

    // your application requests refresh and access tokens
    // after checking the state parameter

    var code = req.query.code || null;
    var state = req.query.state || null;
    var storedState = req.cookies ? req.cookies[stateKey] : null;

    if (state === null || state !== storedState) {
        res.redirect('/#' +
            querystring.stringify({
                error: 'state_mismatch'
            }));
    } else {
        res.clearCookie(stateKey);
        var authOptions = {
            url: 'https://accounts.spotify.com/api/token',
            form: {
                code: code,
                redirect_uri: redirect_uri,
                grant_type: 'authorization_code'
            },
            headers: {
                'Authorization': 'Basic ' + (new Buffer(client_id + ':' + client_secret).toString('base64'))
            },
            json: true
        };

        request.post(authOptions, function (error, response, body) {
            if (!error && response.statusCode === 200) {

                var access_token = body.access_token,
                    refresh_token = body.refresh_token;
                // console.log(body);
                var options = {
                    url: 'https://api.spotify.com/v1/me',
                    headers: { 'Authorization': 'Bearer ' + access_token },
                    json: true
                };

                // use the access token to access the Spotify Web API
                request.get(options, function (error, response, body) {
                    console.log(body);
                });

                // we can also pass the token to the browser to make requests from there
                res.redirect('jukebox://callback/#' +
                    querystring.stringify({
                        access_token: access_token,
                        refresh_token: refresh_token
                    }));
            } else {
                res.redirect('/#' +
                    querystring.stringify({
                        error: 'invalid_token'
                    }));
            }
        });
    }
});

app.get('/refresh_token', function (req, res) {

    // requesting access token from refresh token
    var refresh_token = req.query.refresh_token;
    var authOptions = {
        url: 'https://accounts.spotify.com/api/token',
        headers: { 'Authorization': 'Basic ' + (new Buffer(client_id + ':' + client_secret).toString('base64')) },
        form: {
            grant_type: 'refresh_token',
            refresh_token: refresh_token
        },
        json: true
    };

    request.post(authOptions, function (error, response, body) {
        if (!error && response.statusCode === 200) {
            var access_token = body.access_token;
            res.setHeader("Access-Control-Allow-Origin", "*");
            res.send({
                'access_token': access_token
            });
        }
    });
});
app.get('/SorryCharlie', function (req, res) {
    res.redirect('http://jkbx.us/');
});
app.get('/error', function (req, res) {
    res.redirect('/error.html');
});
var pg = require('pg');
var config = {
    user: 'yotnkoupklgnce', //env var: PGUSER
    database: 'd6480t5vkn701i', //env var: PGDATABASE
    password: 'PEI_Vz3Jnz8qebuxiSafxNHcrj', //env var: PGPASSWORD
    host: 'ec2-54-235-95-188.compute-1.amazonaws.com', // Server hosting the postgres database
    port: 5432, //env var: PGPORT
    max: 15, // max number of clients in the pool
    idleTimeoutMillis: 0, // how long a client is allowed to remain idle before being closed
};


//this initializes a connection pool
//it will keep idle connections open for 30 seconds
//and set a limit of maximum 10 idle clients
var pool = new pg.Pool(config);

app.post('/votes', function (request, response) {
    try {
        pool.connect(function (err, client, done) {
            if (err) { throw err; }
            if (request.body.userName) {
                client
                    .query("select songname from songvotes where userid in ($1)", [request.body.userName], function (err, result) {
                        done(err);
                        if (result.rows.length > 0) {
                            results = {};
                            results["songs"] = JSON.stringify(result.rows[0].songname);
                            response.send(results);
                            //setTimeout(function() { client.end(); }, 10000);
                        }
                        else {
                            response.send("FAILURE 214");
                            //setTimeout(function() { client.end(); }, 10000);
                        }
                    setTimeout(function() { client.end(); }, 10000);
                    });
            }
        });
    }
    catch (exception) {
        console.log(exception);
    }
    //pg.end();
});

app.post('/checkPassword', function (request, response) {
    pool.connect(function (err, client, done) {
        if (request.body.password) {
            client
                .query("select distinct lastfm from users where lastfm in ($1)", [request.body.password], function (err, result) {
                    done(err);
                    if (result.rows.length <= 0) {
                        results = {};
                        results["success"] = JSON.stringify("SUCCESS");
                        response.send(results);
                        //setTimeout(function() { client.end(); }, 10000);
                    }
                    else if (result.rows.length > 0) {
                        results = {};
                        results["failure"] = JSON.stringify("FAIL");
                        response.send(results);
                        //setTimeout(function() { client.end(); }, 10000);
                    }
                    else {
                        response.send("FAILURE 245");
                        //setTimeout(function() { client.end(); }, 10000);
                    }
                setTimeout(function() { client.end(); }, 10000);
                });
        }
    });
    //pg.end();
});

var songUpdate = function (songTitle, artist, userName) {
    console.log(songTitle, artist, userName);
    pool.connect(function (err, client, done) {
        client
            .query("update songupdate set artist = $1 where userid in ($2)", [artist, userName]);
        client
            .query("update songupdate set songname = $1 where userid in ($2)", [songTitle, userName], function (err, result) {
                done(err);
                if (err) { throw err; }
            setTimeout(function() { client.end(); }, 10000);
            });
    });
    //pg.end();
}
app.post('/songRefresh', function (request, response) {
    pool.connect(function (err, client, done) {
        if (request.body.lastFM) {
            client
                .query("select * from songupdate where userid in ($1)", [request.body.lastFM], function (err, result) {
                    done(err);
                    if (result.rows.length > 0) {
                        console.log(result.rows);
                        results = {};
                        results["songs"] = JSON.stringify(result.rows[0].songname);
                        results["playlist"] = JSON.stringify(result.rows[0].playlist);
                        results["artist"] = JSON.stringify(result.rows[0].artist);
                        response.send(results);
                        //setTimeout(function() { client.end(); }, 10000);
                    }
                    else {
                        results = {};
                        results["songs"] = JSON.stringify(result);
                        results["playlist"] = JSON.stringify(result);
                        results["artist"] = JSON.stringify(result);
                        response.send(results);
                        //setTimeout(function() { client.end(); }, 10000);
                    }
                setTimeout(function() { client.end(); }, 10000);
                });
        }

    });
    //pg.end();
});


app.post('/upVote', function (request, response) {
    pool.connect(function (err, client, done) {
        if (request.body.userName && request.body.party && request.body.song) {
            client
                .query("UPDATE songvotes set songname = (songname || ($1) || ($2)) where userid in ($3)", [",  +", request.body.song, request.body.userName], function (err, result) {
                    done(err);
            });
            client
                .query("select songname from songvotes where userid in ($1)", [request.body.userName], function (err, result) {
                    done(err);
                    if (result.rows.length > 0) {
                        var results = {};
                        results["songs"] = JSON.stringify(result.rows[0].songname);
                        response.send(results);
                        //setTimeout(function() { client.end(); }, 10000);
                    }
                    else {
                        response.send("Error");
                        //setTimeout(function() { client.end(); }, 10000);
                    }
                setTimeout(function() { client.end(); }, 10000);
                });
        }
    });
    //pg.end();
});

app.post('/downVote', function (request, response) {
    pool.connect(function (err, client, done) {
        if (request.body.userName && request.body.party && request.body.song) {
            client
                .query("UPDATE songvotes set songname = (songname || ($1) || ($2)) where userid in ($3)", [",  -", request.body.song, request.body.userName], function (err, result) {
                    done(err);
                    client
                        .query("select songname from songvotes where userid in ($1)", [request.body.userName], function (err, result) {
                            done(err);
                            if (result.rows.length > 0) {
                                var results = {};
                                results["songs"] = JSON.stringify(result.rows[0].songname);
                                response.send(results);
                                //setTimeout(function() { client.end(); }, 10000);
                            }
                            else {
                                response.send("Error");
                                //setTimeout(function() { client.end(); }, 10000);
                            }
                        setTimeout(function() { client.end(); }, 10000);
                        });
                });
        }
    });
    //pg.end();
});

app.post('/clearVotes', function (request, response) {
    pool.connect(function (err, client, done) {
        if (request.body.userName) {
            client
                .query("UPDATE songvotes set songname = ($1) where userid in ($2)", ["null", request.body.userName], function (err, result) {
                    done(err);
                    var object = {};
                    object["data"] = result.rows;
                    response.send(object);
                    setTimeout(function() { client.end(); }, 10000);
                });
        }
    });
    //pg.end();
});

app.post('/', function (request, response) {
    console.log(request);
    pool.connect(function (err, client, done) {
            client
                .query("select * from public.users where party in ($1)", [request.body.search.toUpperCase()], function (err, result) {
                console.log(result.rows[0]);
                    if (result.rows[0]) {
                        var results = {};
                        response.setHeader("Access-Control-Allow-Origin", "*");
                        results["password"] = JSON.stringify(result.rows[0].superpowers);
                        results["access_token"] = JSON.stringify(result.rows[0].access_token);
                        results["lastFM"] = JSON.stringify(result.rows[0].lastfm);
                        results["partyID"] = JSON.stringify(result.rows[0].party);
                        results["username"] = JSON.stringify(result.rows[0].username);
                        results["playlist"] = JSON.stringify(result.rows[0].playlist);
                        results["explicit"] = JSON.stringify(result.rows[0].explicit);
                        results["refresh_token"] = JSON.stringify(result.rows[0].refresh_token);
                        response.send(results);
                        //pg.end();
                    }
                    else {
                        console.log("No Matches");
                        response.send("No Matches");
                        //pg.end();
                    }
                setTimeout(function() { client.end(); }, 10000);
                });

    });
    //pg.end();
});
pool.on('error', function (err, client, done) {
    // if an error is encountered by a client while it sits idle in the pool
    // the pool itself will emit an error event with both the error and
    // the client which emitted the original error
    // this is a rare occurrence but can happen if there is a network partition
    // between your application and the database, the database restarts, etc.
    // and so you might want to handle it and at least log it out
    console.error('idle client error', err.message, err.stack)
});
if (ii === 1) {
    console.log('Listening on 5000');
    app.listen(process.env.PORT || 5000)
}
else if (ii === 2) {
    console.log('Listening on 5000');
    app.listen(process.env.PORT || 5000)
}
else if (ii === 3) {
    console.log('Listening on 8080');
    app.listen(process.env.PORT || 8080)
}
