.class public Lcom/osp/app/signin/sasdk/test/TestProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTestApiServer:Ljava/lang/String;

.field private static sTestAuthServer:Ljava/lang/String;

.field private static sTestCountryCode:Ljava/lang/String;

.field private static sTestIdmServer:Ljava/lang/String;

.field private static sTestLocale:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TestProperty class can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTestApiServer()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestApiServer:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestAuthServer()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestAuthServer:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestCountryCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestIdmServer()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestIdmServer:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestLocale()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestLocale:Ljava/lang/String;

    return-object v0
.end method

.method public static setTestProperty(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "test_api_server"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestApiServer:Ljava/lang/String;

    const-string v0, "test_auth_server"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestAuthServer:Ljava/lang/String;

    const-string v0, "test_idm_server"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestIdmServer:Ljava/lang/String;

    const-string v0, "test_locale"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestLocale:Ljava/lang/String;

    const-string v0, "test_country_code"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/osp/app/signin/sasdk/test/TestProperty;->sTestCountryCode:Ljava/lang/String;

    return-void
.end method
