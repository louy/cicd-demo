import * as Sentry from '@sentry/browser';
import { Integrations } from '@sentry/tracing';

if (process.env.SENTRY_DSN) {
  Sentry.init({
    dsn: process.env.SENTRY_DSN,
    integrations: [
      new Integrations.BrowserTracing(),
    ],

    // We recommend adjusting this value in production, or using tracesSampler
    // for finer control
    tracesSampleRate: 1.0,
  });
}
