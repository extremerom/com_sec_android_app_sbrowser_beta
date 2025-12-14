.class final enum Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/public_things/PublicPages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

.field public static final enum LICENSE:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

.field public static final enum PRIVACY_POLICY:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

.field public static final enum TERMS_OF_SERVICE:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;


# instance fields
.field private final mFallbackUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mGlobalConfigKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->LICENSE:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    sget-object v1, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->PRIVACY_POLICY:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    sget-object v2, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->TERMS_OF_SERVICE:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    const-string v1, "license"

    const-string v2, "https://www.internet.apps.samsung.com/license/index.html"

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->LICENSE:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    const-string v1, "privacyPolicy"

    const-string v2, "https://www.internet.apps.samsung.com/pt/index.html?type=pp"

    const-string v3, "PRIVACY_POLICY"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->PRIVACY_POLICY:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    const-string v1, "termsOfService"

    const-string v2, "https://www.internet.apps.samsung.com/pt/index.html?type=tos"

    const-string v3, "TERMS_OF_SERVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->TERMS_OF_SERVICE:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->$values()[Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->mGlobalConfigKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->mFallbackUrl:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;)Ljava/lang/String;
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->url(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private url(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->mFallbackUrl:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->mGlobalConfigKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->mFallbackUrl:Ljava/lang/String;

    const-string v2, "PublicThings"

    invoke-virtual {v0, v2, p1, v1, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    return-object v0
.end method
