import { PrismaService } from './prisma/prisma.service';
import { Prisma } from '@prisma/client';
export declare class AppService {
    private prisma;
    constructor(prisma: PrismaService);
    createUser(data: Prisma.userCreateInput): Promise<void>;
}
