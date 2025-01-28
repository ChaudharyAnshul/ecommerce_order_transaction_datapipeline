from api_helper import APIClient
import asyncio

async def main():
    client = APIClient()
    res = await client.get_orders_by_user(2)
    # print(res)
    return res

res = asyncio.run(main())
print(res)