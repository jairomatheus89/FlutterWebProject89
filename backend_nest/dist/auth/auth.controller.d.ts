import { AuthService } from "./auth.service";
import { SignUserDTO } from "../dto/sign-user.dto";
import { AppService } from "src/app.service";
export declare class AuthCotroller {
    private authService;
    private appService;
    constructor(authService: AuthService, appService: AppService);
    signPost(dto: SignUserDTO): Promise<{
        access_token: string;
    }>;
    showUserData(req: any): Promise<{
        seuemailfdp: string | undefined;
        alerta: string;
    }>;
}
