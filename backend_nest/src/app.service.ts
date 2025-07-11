import { HttpException, Injectable} from '@nestjs/common';
import { PrismaService } from './prisma/prisma.service';
import { Prisma } from '@prisma/client';
import * as bcrypt from 'bcrypt';



@Injectable()
export class AppService {
  saltOrRounds: number = 10;
  hashpassword: string;

  constructor(private prisma: PrismaService){}
  
  async createUser(data: Prisma.userCreateInput){

    const emailrepeat = await this.prisma.user.findUnique({
      where: {email: data.email}
    })
    if (emailrepeat){
      throw new HttpException("Esse Email ja esta sendo usado, digite outro",400);
    }

    const namerepeat = await this.prisma.user.findUnique({
      where: {username: data.username}
    })
    if (namerepeat){
      throw new HttpException("Esse username ja esta em uso",400);
    }

    this.hashpassword = await bcrypt.hash(data.password, this.saltOrRounds)

    data.password = this.hashpassword

    await this.prisma.user.create({
      data,
    });
  }
}