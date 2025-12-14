.class public final enum LHb/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LHb/e;

.field public static final Companion:LHb/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Function:LHb/e;

.field public static final enum KFunction:LHb/e;

.field public static final enum KSuspendFunction:LHb/e;

.field public static final enum SuspendFunction:LHb/e;

.field public static final enum UNKNOWN:LHb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LHb/e;

    const-string v1, "Function"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHb/e;->Function:LHb/e;

    new-instance v1, LHb/e;

    const-string v2, "SuspendFunction"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LHb/e;->SuspendFunction:LHb/e;

    new-instance v2, LHb/e;

    const-string v3, "KFunction"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LHb/e;->KFunction:LHb/e;

    new-instance v3, LHb/e;

    const-string v4, "KSuspendFunction"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LHb/e;->KSuspendFunction:LHb/e;

    new-instance v4, LHb/e;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LHb/e;->UNKNOWN:LHb/e;

    filled-new-array {v0, v1, v2, v3, v4}, [LHb/e;

    move-result-object v0

    sput-object v0, LHb/e;->$VALUES:[LHb/e;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LHb/e;->$ENTRIES:Llb/a;

    new-instance v0, LHb/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LHb/e;->Companion:LHb/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LHb/e;
    .locals 1

    const-class v0, LHb/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHb/e;

    return-object p0
.end method

.method public static values()[LHb/e;
    .locals 1

    sget-object v0, LHb/e;->$VALUES:[LHb/e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHb/e;

    return-object v0
.end method
