import { PrismaService } from './prisma/prisma.service';
import { Prisma } from '@prisma/client';
export declare class AppService {
    private prisma;
    saltOrRounds: number;
    hashpassword: string;
    constructor(prisma: PrismaService);
    createUser(data: Prisma.userCreateInput): Promise<void>;
    showUserEmail(data: string): Promise<{
        seuemailfdp: string | undefined;
        alerta: string;
    }>;
}
