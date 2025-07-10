import { AppService } from './app.service';
import { CreateUserDTO } from './dto/create-user.dto';
export declare class AppController {
    private readonly appService;
    constructor(appService: AppService);
    registerUser(dto: CreateUserDTO): Promise<{
        SUCCESO: string;
    }>;
}
