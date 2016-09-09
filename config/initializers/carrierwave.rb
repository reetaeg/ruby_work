# Allow non-ascii letters
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\s\.\-\+]/