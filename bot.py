#!/usr/bin/env python
# -*- coding: utf-8 -*-

from telegram.ext import Updater, CommandHandler, MessageHandler, Filters

bot_token = open('bot_token').read().strip()

def siema(update, context):
    update.message.reply_text('co tam')

updater = Updater(bot_token, use_context=True)
dispatcher = updater.dispatcher

dispatcher.add_handler(CommandHandler("siema", siema))

updater.start_polling()
updater.idle()