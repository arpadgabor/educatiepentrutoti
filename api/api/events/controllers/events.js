'use strict';
const { parseMultipartData, sanitizeEntity } = require('strapi-utils');

/**
 * Read the documentation (https://strapi.io/documentation/3.0.0-beta.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  async find(ctx) {
    let entities;
    if (ctx.query._q) {
      entities = await strapi.services.events.search(ctx.query);
    } else {
      entities = await strapi.services.events.find(ctx.query);
    }

    entities.forEach(entity => {
      delete entity.attendees
    })

    return entities.map(entity => sanitizeEntity(entity, { model: strapi.models.events }));
  },
};
