.class public final enum LS3/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LS3/j;

.field public static final enum DECODE_DATA:LS3/j;

.field public static final enum INITIALIZE:LS3/j;

.field public static final enum SWITCH_TO_SOURCE_SERVICE:LS3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LS3/j;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LS3/j;->INITIALIZE:LS3/j;

    new-instance v1, LS3/j;

    const-string v2, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LS3/j;->SWITCH_TO_SOURCE_SERVICE:LS3/j;

    new-instance v2, LS3/j;

    const-string v3, "DECODE_DATA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LS3/j;->DECODE_DATA:LS3/j;

    filled-new-array {v0, v1, v2}, [LS3/j;

    move-result-object v0

    sput-object v0, LS3/j;->$VALUES:[LS3/j;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS3/j;
    .locals 1

    const-class v0, LS3/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS3/j;

    return-object p0
.end method

.method public static values()[LS3/j;
    .locals 1

    sget-object v0, LS3/j;->$VALUES:[LS3/j;

    invoke-virtual {v0}, [LS3/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS3/j;

    return-object v0
.end method
