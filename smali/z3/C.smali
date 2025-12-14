.class public final enum Lz3/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lz3/C;

.field public static final enum AUTOMATIC:Lz3/C;

.field public static final enum HARDWARE:Lz3/C;

.field public static final enum SOFTWARE:Lz3/C;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lz3/C;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz3/C;->AUTOMATIC:Lz3/C;

    new-instance v1, Lz3/C;

    const-string v2, "HARDWARE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz3/C;->HARDWARE:Lz3/C;

    new-instance v2, Lz3/C;

    const-string v3, "SOFTWARE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lz3/C;->SOFTWARE:Lz3/C;

    filled-new-array {v0, v1, v2}, [Lz3/C;

    move-result-object v0

    sput-object v0, Lz3/C;->$VALUES:[Lz3/C;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz3/C;
    .locals 1

    const-class v0, Lz3/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz3/C;

    return-object p0
.end method

.method public static values()[Lz3/C;
    .locals 1

    sget-object v0, Lz3/C;->$VALUES:[Lz3/C;

    invoke-virtual {v0}, [Lz3/C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz3/C;

    return-object v0
.end method
