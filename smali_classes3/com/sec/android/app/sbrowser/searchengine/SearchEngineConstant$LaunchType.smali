.class public final enum Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

.field public static final enum MAIN_VIEW:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

.field public static final enum WIDGET:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->MAIN_VIEW:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    sget-object v1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->WIDGET:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    const-string v1, "MAIN_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->MAIN_VIEW:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    const-string v1, "WIDGET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->WIDGET:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->$values()[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->$VALUES:[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->$VALUES:[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    return-object v0
.end method
