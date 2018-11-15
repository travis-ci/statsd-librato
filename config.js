{
  librato: {
    email: process.env.LIBRATO_EMAIL,
    token: process.env.LIBRATO_TOKEN,
    source: process.env.LIBRATO_SOURCE
  },

  backends: ["statsd-librato-backend"],

  address: "0.0.0.0",
  port: 8125
}
