.class public final enum LG3/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LG3/t;

.field public static final enum BUTT:LG3/t;

.field public static final enum ROUND:LG3/t;

.field public static final enum UNKNOWN:LG3/t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LG3/t;

    const-string v1, "BUTT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG3/t;->BUTT:LG3/t;

    new-instance v1, LG3/t;

    const-string v2, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG3/t;->ROUND:LG3/t;

    new-instance v2, LG3/t;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LG3/t;->UNKNOWN:LG3/t;

    filled-new-array {v0, v1, v2}, [LG3/t;

    move-result-object v0

    sput-object v0, LG3/t;->$VALUES:[LG3/t;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LG3/t;
    .locals 1

    const-class v0, LG3/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG3/t;

    return-object p0
.end method

.method public static values()[LG3/t;
    .locals 1

    sget-object v0, LG3/t;->$VALUES:[LG3/t;

    invoke-virtual {v0}, [LG3/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG3/t;

    return-object v0
.end method
