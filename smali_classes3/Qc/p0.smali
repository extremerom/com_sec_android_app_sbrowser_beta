.class public final enum LQc/p0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LQc/p0;

.field public static final enum START:LQc/p0;

.field public static final enum STOP:LQc/p0;

.field public static final enum STOP_AND_RESET_REPLAY_CACHE:LQc/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LQc/p0;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQc/p0;->START:LQc/p0;

    new-instance v1, LQc/p0;

    const-string v2, "STOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LQc/p0;->STOP:LQc/p0;

    new-instance v2, LQc/p0;

    const-string v3, "STOP_AND_RESET_REPLAY_CACHE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LQc/p0;->STOP_AND_RESET_REPLAY_CACHE:LQc/p0;

    filled-new-array {v0, v1, v2}, [LQc/p0;

    move-result-object v0

    sput-object v0, LQc/p0;->$VALUES:[LQc/p0;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LQc/p0;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQc/p0;
    .locals 1

    const-class v0, LQc/p0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQc/p0;

    return-object p0
.end method

.method public static values()[LQc/p0;
    .locals 1

    sget-object v0, LQc/p0;->$VALUES:[LQc/p0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQc/p0;

    return-object v0
.end method
