.class public final enum Lyc/X;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lyc/X;

.field public static final enum IN_IN_OUT_POSITION:Lyc/X;

.field public static final enum NO_CONFLICT:Lyc/X;

.field public static final enum OUT_IN_IN_POSITION:Lyc/X;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyc/X;

    const-string v1, "NO_CONFLICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyc/X;->NO_CONFLICT:Lyc/X;

    new-instance v1, Lyc/X;

    const-string v2, "IN_IN_OUT_POSITION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyc/X;->IN_IN_OUT_POSITION:Lyc/X;

    new-instance v2, Lyc/X;

    const-string v3, "OUT_IN_IN_POSITION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyc/X;->OUT_IN_IN_POSITION:Lyc/X;

    filled-new-array {v0, v1, v2}, [Lyc/X;

    move-result-object v0

    sput-object v0, Lyc/X;->$VALUES:[Lyc/X;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyc/X;
    .locals 1

    const-class v0, Lyc/X;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc/X;

    return-object p0
.end method

.method public static values()[Lyc/X;
    .locals 1

    sget-object v0, Lyc/X;->$VALUES:[Lyc/X;

    invoke-virtual {v0}, [Lyc/X;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc/X;

    return-object v0
.end method
