.class public final enum LBc/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LBc/b;

.field public static final enum FOR_INCORPORATION:LBc/b;

.field public static final enum FOR_SUBTYPING:LBc/b;

.field public static final enum FROM_EXPRESSION:LBc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LBc/b;

    const-string v1, "FOR_SUBTYPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBc/b;->FOR_SUBTYPING:LBc/b;

    new-instance v1, LBc/b;

    const-string v2, "FOR_INCORPORATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LBc/b;->FOR_INCORPORATION:LBc/b;

    new-instance v2, LBc/b;

    const-string v3, "FROM_EXPRESSION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LBc/b;->FROM_EXPRESSION:LBc/b;

    filled-new-array {v0, v1, v2}, [LBc/b;

    move-result-object v0

    sput-object v0, LBc/b;->$VALUES:[LBc/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LBc/b;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LBc/b;
    .locals 1

    const-class v0, LBc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LBc/b;

    return-object p0
.end method

.method public static values()[LBc/b;
    .locals 1

    sget-object v0, LBc/b;->$VALUES:[LBc/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBc/b;

    return-object v0
.end method
