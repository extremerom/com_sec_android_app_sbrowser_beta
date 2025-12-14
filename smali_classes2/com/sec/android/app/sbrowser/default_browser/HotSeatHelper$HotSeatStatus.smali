.class public final enum Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HotSeatStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

.field public static final enum EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

.field public static final enum NOT_EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

.field public static final enum NOT_SUPPORTED:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->NOT_EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->NOT_SUPPORTED:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    const-string v1, "NOT_EXIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->NOT_EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    const-string v1, "EXIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->NOT_SUPPORTED:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->$values()[Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    return-object v0
.end method
