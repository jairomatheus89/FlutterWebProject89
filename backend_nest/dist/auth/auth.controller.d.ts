import { AuthService } from "./auth.service";
import { SignUserDTO } from "../dto/sign-user.dto";
export declare class AuthCotroller {
    private authService;
    constructor(authService: AuthService);
    signPost(dto: SignUserDTO): Promise<{
        access_token: string;
    }>;
}
