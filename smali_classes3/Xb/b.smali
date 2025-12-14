.class public final enum LXb/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LXb/b;

.field public static final enum FLEXIBLE_LOWER_BOUND:LXb/b;

.field public static final enum FLEXIBLE_UPPER_BOUND:LXb/b;

.field public static final enum INFLEXIBLE:LXb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LXb/b;

    const-string v1, "INFLEXIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXb/b;->INFLEXIBLE:LXb/b;

    new-instance v1, LXb/b;

    const-string v2, "FLEXIBLE_UPPER_BOUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LXb/b;->FLEXIBLE_UPPER_BOUND:LXb/b;

    new-instance v2, LXb/b;

    const-string v3, "FLEXIBLE_LOWER_BOUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LXb/b;->FLEXIBLE_LOWER_BOUND:LXb/b;

    filled-new-array {v0, v1, v2}, [LXb/b;

    move-result-object v0

    sput-object v0, LXb/b;->$VALUES:[LXb/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LXb/b;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LXb/b;
    .locals 1

    const-class v0, LXb/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LXb/b;

    return-object p0
.end method

.method public static values()[LXb/b;
    .locals 1

    sget-object v0, LXb/b;->$VALUES:[LXb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LXb/b;

    return-object v0
.end method
