.class public final enum LPc/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LPc/a;

.field public static final enum DROP_LATEST:LPc/a;

.field public static final enum DROP_OLDEST:LPc/a;

.field public static final enum SUSPEND:LPc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LPc/a;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LPc/a;->SUSPEND:LPc/a;

    new-instance v1, LPc/a;

    const-string v2, "DROP_OLDEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LPc/a;->DROP_OLDEST:LPc/a;

    new-instance v2, LPc/a;

    const-string v3, "DROP_LATEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LPc/a;->DROP_LATEST:LPc/a;

    filled-new-array {v0, v1, v2}, [LPc/a;

    move-result-object v0

    sput-object v0, LPc/a;->$VALUES:[LPc/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LPc/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LPc/a;
    .locals 1

    const-class v0, LPc/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LPc/a;

    return-object p0
.end method

.method public static values()[LPc/a;
    .locals 1

    sget-object v0, LPc/a;->$VALUES:[LPc/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LPc/a;

    return-object v0
.end method
