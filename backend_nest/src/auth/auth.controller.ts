import { Body, Controller, Get, Post, UseGuards, Req } from "@nestjs/common";
import { AuthService } from "./auth.service";
import { SignUserDTO } from "../dto/sign-user.dto";
import { AuthGuard } from "./auth.guard";
import { AppService } from "src/app.service";

@Controller()
export class AuthCotroller {

    constructor(
        private authService: AuthService,
        private appService: AppService
    ){}

    @Post('authlogin')
    signPost(@Body() dto: SignUserDTO){
        return this.authService.login(dto);
    }


    @UseGuards(AuthGuard)
    @Get('profile')
    showUserData(@Req() req){
        return this.appService.showUserEmail(req.user);
    }

}