import { HttpException, Injectable } from '@nestjs/common';
import { PrismaService } from './prisma/prisma.service';
import { Prisma } from '@prisma/client';


@Injectable()
export class AppService {
  
  constructor(private prisma: PrismaService){}

  getHello(): string {
    return 'Hello World!';
  }

  async createUser(data: Prisma.userCreateInput){

    const emailrepeat = await this.prisma.user.findUnique({
      where: {email: data.email}
    })

    if (emailrepeat){
      throw new HttpException("Esse Email ja esta sendo usado, digite outro",400);
    }

    await this.prisma.user.create({
      data,
    })
  }
}