# MemcachesPage Gem Changelog

## 0.x.x - 2013/03/xx
 * **Backwards-incompatible change**: Now called using `memcaches_page`. See
README for details.
 * Update for compatibility with Rails 3.2

## 0.1.3 - 2012/09/20
 * Allow passing through options to `Rails.cache.write`, e.g. `cache_page expires_in: 5.minutes`

## 0.1.2 - 2012/06/19
 * Use standard Rails caching methods to reduce complexity

## 0.1.1 - 2012/06/19
 * Still work with no namespace set
 * Fail silently if Dalli isn't the store

## 0.1.0 - 2012/06/18
 * First release