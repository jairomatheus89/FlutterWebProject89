import { IsNotEmpty } from "class-validator";

export class SignUserDTO {
    @IsNotEmpty()
    username: string;
    @IsNotEmpty()
    password: string;
}