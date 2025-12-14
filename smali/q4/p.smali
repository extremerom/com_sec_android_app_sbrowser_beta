.class public final enum Lq4/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lq4/p;

.field public static final enum LEFT:Lq4/p;

.field public static final enum RIGHT:Lq4/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lq4/p;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq4/p;->LEFT:Lq4/p;

    new-instance v1, Lq4/p;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq4/p;->RIGHT:Lq4/p;

    filled-new-array {v0, v1}, [Lq4/p;

    move-result-object v0

    sput-object v0, Lq4/p;->$VALUES:[Lq4/p;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/p;
    .locals 1

    const-class v0, Lq4/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/p;

    return-object p0
.end method

.method public static values()[Lq4/p;
    .locals 1

    sget-object v0, Lq4/p;->$VALUES:[Lq4/p;

    invoke-virtual {v0}, [Lq4/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/p;

    return-object v0
.end method
