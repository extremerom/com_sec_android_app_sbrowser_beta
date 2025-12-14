.class public final enum LWc/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LWc/c;

.field public static final enum BLOCKING:LWc/c;

.field public static final enum CPU_ACQUIRED:LWc/c;

.field public static final enum DORMANT:LWc/c;

.field public static final enum PARKING:LWc/c;

.field public static final enum TERMINATED:LWc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LWc/c;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWc/c;->CPU_ACQUIRED:LWc/c;

    new-instance v1, LWc/c;

    const-string v2, "BLOCKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LWc/c;->BLOCKING:LWc/c;

    new-instance v2, LWc/c;

    const-string v3, "PARKING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LWc/c;->PARKING:LWc/c;

    new-instance v3, LWc/c;

    const-string v4, "DORMANT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LWc/c;->DORMANT:LWc/c;

    new-instance v4, LWc/c;

    const-string v5, "TERMINATED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LWc/c;->TERMINATED:LWc/c;

    filled-new-array {v0, v1, v2, v3, v4}, [LWc/c;

    move-result-object v0

    sput-object v0, LWc/c;->$VALUES:[LWc/c;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LWc/c;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LWc/c;
    .locals 1

    const-class v0, LWc/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LWc/c;

    return-object p0
.end method

.method public static values()[LWc/c;
    .locals 1

    sget-object v0, LWc/c;->$VALUES:[LWc/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWc/c;

    return-object v0
.end method
