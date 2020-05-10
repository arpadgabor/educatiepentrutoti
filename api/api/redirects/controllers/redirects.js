'use strict';
const { sanitizeEntity } = require('strapi-utils');

module.exports = {
  async redirect(ctx) {
    const { path } = ctx.params;

    let entity = await strapi.query('redirects').model.query(qb => { qb.where('path', path) }).fetch()

    if(!entity) {
      ctx.status = 404
      return ctx.body = {
        statusCode: 404,
        message: 'URL not found'
      }
    }

    let sanitizedEntity = sanitizeEntity(entity, { model: strapi.models.redirects })

    await strapi.query('redirects').model.query(qb => {
      qb.where('path', path).update('views', ++sanitizedEntity.views)
    }).fetch()

    return sanitizedEntity
  },
};
