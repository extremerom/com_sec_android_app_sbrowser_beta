.class public final enum Lr4/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lr4/e;

.field public static final enum CLOSEST:Lr4/e;

.field public static final enum DOWN:Lr4/e;

.field public static final enum UP:Lr4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lr4/e;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/e;->UP:Lr4/e;

    new-instance v1, Lr4/e;

    const-string v2, "DOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr4/e;->DOWN:Lr4/e;

    new-instance v2, Lr4/e;

    const-string v3, "CLOSEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr4/e;->CLOSEST:Lr4/e;

    filled-new-array {v0, v1, v2}, [Lr4/e;

    move-result-object v0

    sput-object v0, Lr4/e;->$VALUES:[Lr4/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr4/e;
    .locals 1

    const-class v0, Lr4/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr4/e;

    return-object p0
.end method

.method public static values()[Lr4/e;
    .locals 1

    sget-object v0, Lr4/e;->$VALUES:[Lr4/e;

    invoke-virtual {v0}, [Lr4/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/e;

    return-object v0
.end method
