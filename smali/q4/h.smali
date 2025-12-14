.class public final enum Lq4/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lq4/h;

.field public static final enum CENTER:Lq4/h;

.field public static final enum LEFT:Lq4/h;

.field public static final enum RIGHT:Lq4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lq4/h;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq4/h;->LEFT:Lq4/h;

    new-instance v1, Lq4/h;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq4/h;->CENTER:Lq4/h;

    new-instance v2, Lq4/h;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lq4/h;->RIGHT:Lq4/h;

    filled-new-array {v0, v1, v2}, [Lq4/h;

    move-result-object v0

    sput-object v0, Lq4/h;->$VALUES:[Lq4/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/h;
    .locals 1

    const-class v0, Lq4/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/h;

    return-object p0
.end method

.method public static values()[Lq4/h;
    .locals 1

    sget-object v0, Lq4/h;->$VALUES:[Lq4/h;

    invoke-virtual {v0}, [Lq4/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/h;

    return-object v0
.end method
