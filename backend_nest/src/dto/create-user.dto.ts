import { IsEmail, IsNotEmpty, MinLength } from "class-validator";

export class CreateUserDTO {
    @IsNotEmpty({message: 'Email deve ser preenchida'})
    @IsEmail()
    email : string;

    @IsNotEmpty({message: 'username deve ser preenchida'})
    @MinLength(5, {message:"O username precisa de no minimo 5 caracteres"})
    username: string;

    @IsNotEmpty({message: 'senha deve ser preenchida'})
    @MinLength(8, {message:"A senha precisa de no minimo 8 caracteres"})
    password: string;
}