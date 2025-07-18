"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AuthModule = void 0;
const common_1 = require("@nestjs/common");
const auth_controller_1 = require("./auth.controller");
const auth_service_1 = require("./auth.service");
const app_service_1 = require("../app.service");
const prisma_service_1 = require("../prisma/prisma.service");
const sign_user_dto_1 = require("../dto/sign-user.dto");
const jwt_1 = require("@nestjs/jwt");
const constants_1 = require("./constants");
let AuthModule = class AuthModule {
};
exports.AuthModule = AuthModule;
exports.AuthModule = AuthModule = __decorate([
    (0, common_1.Module)({
        imports: [
            jwt_1.JwtModule.register({
                global: true,
                secret: constants_1.jwtConstants.secret,
                signOptions: { expiresIn: '5m' }
            })
        ],
        controllers: [auth_controller_1.AuthCotroller],
        providers: [auth_service_1.AuthService, app_service_1.AppService, prisma_service_1.PrismaService, sign_user_dto_1.SignUserDTO],
        exports: []
    })
], AuthModule);
//# sourceMappingURL=auth.module.js.map