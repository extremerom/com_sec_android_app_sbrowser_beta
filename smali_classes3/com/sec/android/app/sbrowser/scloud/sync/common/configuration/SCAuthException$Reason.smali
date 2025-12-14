.class final enum Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

.field public static final enum ACCESS_TOKEN_EXPIRED_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

.field public static final enum ACCOUNT_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

.field public static final enum ACTIVATE_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

.field public static final enum REGISTER_PUSH_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->ACCOUNT_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->REGISTER_PUSH_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->ACTIVATE_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->ACCESS_TOKEN_EXPIRED_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    const-string v1, "ACCOUNT_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->ACCOUNT_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    const-string v1, "REGISTER_PUSH_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->REGISTER_PUSH_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    const-string v1, "ACTIVATE_ERROR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->ACTIVATE_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    const-string v1, "ACCESS_TOKEN_EXPIRED_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->ACCESS_TOKEN_EXPIRED_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->$values()[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->$VALUES:[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->$VALUES:[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCAuthException$Reason;

    return-object v0
.end method
