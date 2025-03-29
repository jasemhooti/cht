from aiogram import types

def register(dp):
    @dp.message_handler(commands=['panel'])
    async def panel(msg: types.Message):
        await msg.answer("مدیریت پنل X-UI")