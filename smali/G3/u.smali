.class public final enum LG3/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LG3/u;

.field public static final enum BEVEL:LG3/u;

.field public static final enum MITER:LG3/u;

.field public static final enum ROUND:LG3/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LG3/u;

    const-string v1, "MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG3/u;->MITER:LG3/u;

    new-instance v1, LG3/u;

    const-string v2, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG3/u;->ROUND:LG3/u;

    new-instance v2, LG3/u;

    const-string v3, "BEVEL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LG3/u;->BEVEL:LG3/u;

    filled-new-array {v0, v1, v2}, [LG3/u;

    move-result-object v0

    sput-object v0, LG3/u;->$VALUES:[LG3/u;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LG3/u;
    .locals 1

    const-class v0, LG3/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG3/u;

    return-object p0
.end method

.method public static values()[LG3/u;
    .locals 1

    sget-object v0, LG3/u;->$VALUES:[LG3/u;

    invoke-virtual {v0}, [LG3/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG3/u;

    return-object v0
.end method
