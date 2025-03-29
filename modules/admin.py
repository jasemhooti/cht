from aiogram import types

def register(dp):
    @dp.message_handler(commands=['admin'])
    async def admin_panel(msg: types.Message):
        await msg.answer("پنل مدیریت")