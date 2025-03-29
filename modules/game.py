from aiogram import types

def register(dp):
    @dp.message_handler(commands=['game'])
    async def game_start(msg: types.Message):
        await msg.answer("شروع بازی")