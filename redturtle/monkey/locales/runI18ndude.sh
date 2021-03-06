#!/bin/sh

DOMAIN='redturtle.monkey'

i18ndude rebuild-pot --pot ${DOMAIN}.pot --create ${DOMAIN} ..
i18ndude rebuild-pot --pot ${DOMAIN}.pot --merge ${DOMAIN}-manual.pot --create ${DOMAIN} ..
i18ndude sync --pot ${DOMAIN}.pot ./*/LC_MESSAGES/${DOMAIN}.po

i18ndude rebuild-pot --pot plone.pot --create plone ../profiles/default
i18ndude sync --pot plone.pot ./*/LC_MESSAGES/plone.po