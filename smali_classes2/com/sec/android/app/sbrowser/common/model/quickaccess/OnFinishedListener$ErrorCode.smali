.class public final enum Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

.field public static final enum ALREADY_EXIST:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

.field public static final enum DATABASE_FAIL:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

.field public static final enum INVALID_PARAM:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->ALREADY_EXIST:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->INVALID_PARAM:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->DATABASE_FAIL:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    const-string v1, "ALREADY_EXIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->ALREADY_EXIST:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    const-string v1, "INVALID_PARAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->INVALID_PARAM:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    const-string v1, "DATABASE_FAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->DATABASE_FAIL:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->$values()[Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    return-object v0
.end method
