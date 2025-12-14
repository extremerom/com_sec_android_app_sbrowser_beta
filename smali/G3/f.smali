.class public final enum LG3/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LG3/f;

.field public static final enum LINEAR:LG3/f;

.field public static final enum RADIAL:LG3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LG3/f;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG3/f;->LINEAR:LG3/f;

    new-instance v1, LG3/f;

    const-string v2, "RADIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG3/f;->RADIAL:LG3/f;

    filled-new-array {v0, v1}, [LG3/f;

    move-result-object v0

    sput-object v0, LG3/f;->$VALUES:[LG3/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LG3/f;
    .locals 1

    const-class v0, LG3/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG3/f;

    return-object p0
.end method

.method public static values()[LG3/f;
    .locals 1

    sget-object v0, LG3/f;->$VALUES:[LG3/f;

    invoke-virtual {v0}, [LG3/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG3/f;

    return-object v0
.end method
