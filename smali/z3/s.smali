.class public final enum Lz3/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lz3/s;

.field public static final enum NONE:Lz3/s;

.field public static final enum PLAY:Lz3/s;

.field public static final enum RESUME:Lz3/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lz3/s;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz3/s;->NONE:Lz3/s;

    new-instance v1, Lz3/s;

    const-string v2, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz3/s;->PLAY:Lz3/s;

    new-instance v2, Lz3/s;

    const-string v3, "RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lz3/s;->RESUME:Lz3/s;

    filled-new-array {v0, v1, v2}, [Lz3/s;

    move-result-object v0

    sput-object v0, Lz3/s;->$VALUES:[Lz3/s;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz3/s;
    .locals 1

    const-class v0, Lz3/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz3/s;

    return-object p0
.end method

.method public static values()[Lz3/s;
    .locals 1

    sget-object v0, Lz3/s;->$VALUES:[Lz3/s;

    invoke-virtual {v0}, [Lz3/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz3/s;

    return-object v0
.end method
