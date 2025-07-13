import { HttpException, Injectable, UnauthorizedException } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { JwtService } from "@nestjs/jwt";
import * as bcrypt from "bcrypt";

@Injectable()
export class AuthService {
    constructor(
        private prisma: PrismaService,
        private jwtService: JwtService
    ){}

    async login(data): Promise<{access_token: string}>{
        
        const user = await this.prisma.user.findUnique({
            where: {username: data.username}
        })

        if(!user){
            throw new HttpException("Este usuario não existe...",400);
        }

        const hashpass = user.password;

        const comparedPass = await bcrypt.compare(data.password, hashpass)

        const payload = {username: user.username}

        if (comparedPass){

            return {access_token: await this.jwtService.signAsync(payload)};

        } else {
            throw new HttpException("Senha não corresponde!...",401);
        }
    }    
    
}