from aiogram import Bot, Dispatcher, executor, types
import sqlite3, json
from modules import admin, user, payment, xui_manager, game

with open("config.json") as f:
    config = json.load(f)

bot = Bot(token=config['token'])
dp = Dispatcher(bot)

admin.register(dp)
user.register(dp)
payment.register(dp)
xui_manager.register(dp)
game.register(dp)

if __name__ == "__main__":
    executor.start_polling(dp, skip_updates=True)
