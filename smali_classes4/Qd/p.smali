.class public final enum LQd/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LQd/p;

.field public static final enum ascii:LQd/p;

.field public static final enum fallback:LQd/p;

.field public static final enum utf:LQd/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LQd/p;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQd/p;->ascii:LQd/p;

    new-instance v1, LQd/p;

    const-string v2, "utf"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LQd/p;->utf:LQd/p;

    new-instance v2, LQd/p;

    const-string v3, "fallback"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LQd/p;->fallback:LQd/p;

    filled-new-array {v0, v1, v2}, [LQd/p;

    move-result-object v0

    sput-object v0, LQd/p;->$VALUES:[LQd/p;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQd/p;
    .locals 1

    const-class v0, LQd/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQd/p;

    return-object p0
.end method

.method public static values()[LQd/p;
    .locals 1

    sget-object v0, LQd/p;->$VALUES:[LQd/p;

    invoke-virtual {v0}, [LQd/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQd/p;

    return-object v0
.end method
