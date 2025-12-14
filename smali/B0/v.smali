.class public final enum LB0/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LB0/v;

.field public static final enum Idle:LB0/v;

.field public static final enum LayingOut:LB0/v;

.field public static final enum LookaheadLayingOut:LB0/v;

.field public static final enum LookaheadMeasuring:LB0/v;

.field public static final enum Measuring:LB0/v;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LB0/v;

    const-string v1, "Measuring"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB0/v;->Measuring:LB0/v;

    new-instance v1, LB0/v;

    const-string v2, "LookaheadMeasuring"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB0/v;->LookaheadMeasuring:LB0/v;

    new-instance v2, LB0/v;

    const-string v3, "LayingOut"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LB0/v;->LayingOut:LB0/v;

    new-instance v3, LB0/v;

    const-string v4, "LookaheadLayingOut"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LB0/v;->LookaheadLayingOut:LB0/v;

    new-instance v4, LB0/v;

    const-string v5, "Idle"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LB0/v;->Idle:LB0/v;

    filled-new-array {v0, v1, v2, v3, v4}, [LB0/v;

    move-result-object v0

    sput-object v0, LB0/v;->$VALUES:[LB0/v;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LB0/v;
    .locals 1

    const-class v0, LB0/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB0/v;

    return-object p0
.end method

.method public static values()[LB0/v;
    .locals 1

    sget-object v0, LB0/v;->$VALUES:[LB0/v;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB0/v;

    return-object v0
.end method
