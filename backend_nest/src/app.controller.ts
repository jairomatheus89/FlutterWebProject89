import { Body, Controller, Post } from '@nestjs/common';
import { AppService } from './app.service';
import { CreateUserDTO } from './dto/create-user.dto';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Post('register')
  async registerUser(@Body() dto: CreateUserDTO){
      await this.appService.createUser(dto);
      return {
        SUCCESO: "CONTA CRIADA COM SUCESSO!"
      } 
  }
}