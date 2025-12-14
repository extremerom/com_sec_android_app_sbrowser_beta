.class public final enum Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PLATFORM_TYPE_UNSPECIFIED",
        "WINDOWS",
        "LINUX",
        "ANDROID",
        "OSX",
        "IOS",
        "ANY_PLATFORM",
        "ALL_PLATFORMS",
        "CHROME",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum ALL_PLATFORMS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum ANDROID:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum ANY_PLATFORM:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum CHROME:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum IOS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum LINUX:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum OSX:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum PLATFORM_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

.field public static final enum WINDOWS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;
    .locals 9

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->PLATFORM_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->WINDOWS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    sget-object v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->LINUX:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    sget-object v3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->ANDROID:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    sget-object v4, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->OSX:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    sget-object v5, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->IOS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    sget-object v6, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->ANY_PLATFORM:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    sget-object v7, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->ALL_PLATFORMS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    sget-object v8, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->CHROME:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    filled-new-array/range {v0 .. v8}, [Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "PLATFORM_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->PLATFORM_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "WINDOWS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->WINDOWS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "LINUX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->LINUX:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "ANDROID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->ANDROID:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "OSX"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->OSX:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "IOS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->IOS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "ANY_PLATFORM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->ANY_PLATFORM:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "ALL_PLATFORMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->ALL_PLATFORMS:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    const-string v1, "CHROME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->CHROME:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->$values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->$VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->$ENTRIES:Llb/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;->$VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/PlatformType;

    return-object v0
.end method
