from aiogram import types

def register(dp):
    @dp.message_handler(commands=['me'])
    async def user_info(msg: types.Message):
        await msg.answer("اطلاعات کاربری شما")