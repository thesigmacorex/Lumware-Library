module.exports = (req, res) => {
  const ua = req.headers['user-agent'] || '';
  if (ua.includes('Roblox')) {
    res.setHeader('Content-Type', 'text/plain');
    res.end('loadstring(game:HttpGet("xxxxxxxxxxxxxxxx"))()');
  } else {
    res.status(204).end();
  }
};
