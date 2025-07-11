import { Module } from "@nestjs/common";
import { AuthCotroller } from "./auth.controller";
import { AuthService } from "./auth.service";
import { AppService } from "src/app.service";
import { PrismaService } from "src/prisma/prisma.service";
import { SignUserDTO } from "../dto/sign-user.dto";
import { JwtModule } from "@nestjs/jwt";
import { jwtConstants } from "./constants";

@Module({
    imports:[
        JwtModule.register({
            global: true,
            secret: jwtConstants.secret,
            signOptions: {expiresIn: '60s'}
        })
    ],
    controllers: [AuthCotroller],
    providers: [AuthService, AppService, PrismaService, SignUserDTO],
    exports: []
})
export class AuthModule{}