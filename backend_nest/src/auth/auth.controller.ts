import { Body, Controller, Post } from "@nestjs/common";
import { AuthService } from "./auth.service";
import { SignUserDTO } from "../dto/sign-user.dto";

@Controller()
export class AuthCotroller {

    constructor(private authService: AuthService){}


    @Post('authlogin')
    signPost(@Body() dto: SignUserDTO){
        return this.authService.login(dto);
    }

}