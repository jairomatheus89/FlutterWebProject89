"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AppService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("./prisma/prisma.service");
const bcrypt = require("bcrypt");
let AppService = class AppService {
    prisma;
    saltOrRounds = 10;
    hashpassword;
    constructor(prisma) {
        this.prisma = prisma;
    }
    async createUser(data) {
        const emailrepeat = await this.prisma.user.findUnique({
            where: { email: data.email }
        });
        if (emailrepeat) {
            throw new common_1.HttpException("Esse Email ja esta sendo usado, digite outro", 400);
        }
        const namerepeat = await this.prisma.user.findUnique({
            where: { username: data.username }
        });
        if (namerepeat) {
            throw new common_1.HttpException("Esse username ja esta em uso", 400);
        }
        this.hashpassword = await bcrypt.hash(data.password, this.saltOrRounds);
        data.password = this.hashpassword;
        await this.prisma.user.create({
            data,
        });
    }
    async showUserEmail(data) {
        const user = await this.prisma.user.findUnique({
            where: { username: data }
        });
        return {
            datas: {
                email: user?.email,
                username: user?.username
            }
        };
    }
};
exports.AppService = AppService;
exports.AppService = AppService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], AppService);
//# sourceMappingURL=app.service.js.map