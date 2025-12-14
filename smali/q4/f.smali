.class public final enum Lq4/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lq4/f;

.field public static final enum LEFT_TO_RIGHT:Lq4/f;

.field public static final enum RIGHT_TO_LEFT:Lq4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lq4/f;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq4/f;->LEFT_TO_RIGHT:Lq4/f;

    new-instance v1, Lq4/f;

    const-string v2, "RIGHT_TO_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq4/f;->RIGHT_TO_LEFT:Lq4/f;

    filled-new-array {v0, v1}, [Lq4/f;

    move-result-object v0

    sput-object v0, Lq4/f;->$VALUES:[Lq4/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/f;
    .locals 1

    const-class v0, Lq4/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/f;

    return-object p0
.end method

.method public static values()[Lq4/f;
    .locals 1

    sget-object v0, Lq4/f;->$VALUES:[Lq4/f;

    invoke-virtual {v0}, [Lq4/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/f;

    return-object v0
.end method
