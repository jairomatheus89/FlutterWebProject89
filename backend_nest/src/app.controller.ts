import { Body, Controller, Get, Post } from '@nestjs/common';
import { AppService } from './app.service';
import { CreateUserDTO } from './dto/create-user.dto';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Post('register')
  async registerUser(@Body() dto: CreateUserDTO){
    await this.appService.createUser(dto);
    return {
      SUCCESO: "CONTA CRIADA COM SUCESSO!"
    }
  }
}
