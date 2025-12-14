.class public final enum Lq4/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lq4/q;

.field public static final enum INSIDE_CHART:Lq4/q;

.field public static final enum OUTSIDE_CHART:Lq4/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lq4/q;

    const-string v1, "OUTSIDE_CHART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq4/q;->OUTSIDE_CHART:Lq4/q;

    new-instance v1, Lq4/q;

    const-string v2, "INSIDE_CHART"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq4/q;->INSIDE_CHART:Lq4/q;

    filled-new-array {v0, v1}, [Lq4/q;

    move-result-object v0

    sput-object v0, Lq4/q;->$VALUES:[Lq4/q;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/q;
    .locals 1

    const-class v0, Lq4/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/q;

    return-object p0
.end method

.method public static values()[Lq4/q;
    .locals 1

    sget-object v0, Lq4/q;->$VALUES:[Lq4/q;

    invoke-virtual {v0}, [Lq4/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/q;

    return-object v0
.end method
