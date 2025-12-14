.class public final enum Lq4/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lq4/i;

.field public static final enum HORIZONTAL:Lq4/i;

.field public static final enum VERTICAL:Lq4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lq4/i;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq4/i;->HORIZONTAL:Lq4/i;

    new-instance v1, Lq4/i;

    const-string v2, "VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq4/i;->VERTICAL:Lq4/i;

    filled-new-array {v0, v1}, [Lq4/i;

    move-result-object v0

    sput-object v0, Lq4/i;->$VALUES:[Lq4/i;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/i;
    .locals 1

    const-class v0, Lq4/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/i;

    return-object p0
.end method

.method public static values()[Lq4/i;
    .locals 1

    sget-object v0, Lq4/i;->$VALUES:[Lq4/i;

    invoke-virtual {v0}, [Lq4/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/i;

    return-object v0
.end method
