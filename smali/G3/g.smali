.class public final enum LG3/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LG3/g;

.field public static final enum MASK_MODE_ADD:LG3/g;

.field public static final enum MASK_MODE_INTERSECT:LG3/g;

.field public static final enum MASK_MODE_NONE:LG3/g;

.field public static final enum MASK_MODE_SUBTRACT:LG3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LG3/g;

    const-string v1, "MASK_MODE_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG3/g;->MASK_MODE_ADD:LG3/g;

    new-instance v1, LG3/g;

    const-string v2, "MASK_MODE_SUBTRACT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG3/g;->MASK_MODE_SUBTRACT:LG3/g;

    new-instance v2, LG3/g;

    const-string v3, "MASK_MODE_INTERSECT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LG3/g;->MASK_MODE_INTERSECT:LG3/g;

    new-instance v3, LG3/g;

    const-string v4, "MASK_MODE_NONE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LG3/g;->MASK_MODE_NONE:LG3/g;

    filled-new-array {v0, v1, v2, v3}, [LG3/g;

    move-result-object v0

    sput-object v0, LG3/g;->$VALUES:[LG3/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LG3/g;
    .locals 1

    const-class v0, LG3/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG3/g;

    return-object p0
.end method

.method public static values()[LG3/g;
    .locals 1

    sget-object v0, LG3/g;->$VALUES:[LG3/g;

    invoke-virtual {v0}, [LG3/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG3/g;

    return-object v0
.end method
