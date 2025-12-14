.class public final enum LH8/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LH8/b;

.field public static final enum All:LH8/b;

.field public static final enum Barcode_QR_DMC:LH8/b;

.field public static final enum Barcode_QR_WECHAT:LH8/b;

.field public static final enum DMC:LH8/b;

.field public static final enum Linear:LH8/b;

.field public static final enum Linear_QR:LH8/b;

.field public static final enum QR:LH8/b;

.field public static final enum QR_DMC:LH8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LH8/b;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH8/b;->All:LH8/b;

    new-instance v1, LH8/b;

    const-string v2, "Linear"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LH8/b;->Linear:LH8/b;

    new-instance v2, LH8/b;

    const-string v3, "QR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LH8/b;->QR:LH8/b;

    new-instance v3, LH8/b;

    const-string v4, "DMC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LH8/b;->DMC:LH8/b;

    new-instance v4, LH8/b;

    const-string v5, "Linear_QR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LH8/b;->Linear_QR:LH8/b;

    new-instance v5, LH8/b;

    const-string v6, "QR_DMC"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LH8/b;->QR_DMC:LH8/b;

    new-instance v6, LH8/b;

    const-string v7, "Barcode_QR_WECHAT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LH8/b;->Barcode_QR_WECHAT:LH8/b;

    new-instance v7, LH8/b;

    const-string v8, "Barcode_QR_DMC"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, LH8/b;->Barcode_QR_DMC:LH8/b;

    filled-new-array/range {v0 .. v7}, [LH8/b;

    move-result-object v0

    sput-object v0, LH8/b;->$VALUES:[LH8/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LH8/b;
    .locals 1

    const-class v0, LH8/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LH8/b;

    return-object p0
.end method

.method public static values()[LH8/b;
    .locals 1

    sget-object v0, LH8/b;->$VALUES:[LH8/b;

    invoke-virtual {v0}, [LH8/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LH8/b;

    return-object v0
.end method
