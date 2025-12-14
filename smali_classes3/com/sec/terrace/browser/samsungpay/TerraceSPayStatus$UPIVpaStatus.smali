.class public final enum Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UPIVpaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

.field public static final enum INVALID:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

.field public static final enum UPI_NAME_EXISTS:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

.field public static final enum UPI_NAME_NOT_EXISTS:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

.field public static final enum UPI_NOT_CONFIGURED:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;
    .locals 4

    sget-object v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->UPI_NAME_EXISTS:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    sget-object v1, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->UPI_NAME_NOT_EXISTS:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    sget-object v2, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->UPI_NOT_CONFIGURED:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    sget-object v3, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->INVALID:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    const-string v1, "UPI_NAME_EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->UPI_NAME_EXISTS:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    new-instance v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    const-string v1, "UPI_NAME_NOT_EXISTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->UPI_NAME_NOT_EXISTS:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    new-instance v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    const-string v1, "UPI_NOT_CONFIGURED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->UPI_NOT_CONFIGURED:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    new-instance v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    const-string v1, "INVALID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->INVALID:Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->$values()[Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->$VALUES:[Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;
    .locals 1

    const-class v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->$VALUES:[Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    invoke-virtual {v0}, [Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;

    return-object v0
.end method
