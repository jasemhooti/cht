from aiogram import types

def register(dp):
    @dp.message_handler(commands=['buy'])
    async def buy(msg: types.Message):
        await msg.answer("خرید پلن")