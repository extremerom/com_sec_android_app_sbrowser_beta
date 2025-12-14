.class public final enum LN4/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LN4/e;

.field public static final enum DEVICE_CHARGING:LN4/e;

.field public static final enum DEVICE_IDLE:LN4/e;

.field public static final enum NETWORK_UNMETERED:LN4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LN4/e;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/e;->NETWORK_UNMETERED:LN4/e;

    new-instance v1, LN4/e;

    const-string v2, "DEVICE_IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LN4/e;->DEVICE_IDLE:LN4/e;

    new-instance v2, LN4/e;

    const-string v3, "DEVICE_CHARGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LN4/e;->DEVICE_CHARGING:LN4/e;

    filled-new-array {v0, v1, v2}, [LN4/e;

    move-result-object v0

    sput-object v0, LN4/e;->$VALUES:[LN4/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LN4/e;
    .locals 1

    const-class v0, LN4/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN4/e;

    return-object p0
.end method

.method public static values()[LN4/e;
    .locals 1

    sget-object v0, LN4/e;->$VALUES:[LN4/e;

    invoke-virtual {v0}, [LN4/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN4/e;

    return-object v0
.end method
