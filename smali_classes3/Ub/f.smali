.class public final enum LUb/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LUb/f;

.field public static final enum NON_STABLE_DECLARED:LUb/f;

.field public static final enum NON_STABLE_SYNTHESIZED:LUb/f;

.field public static final enum STABLE_DECLARED:LUb/f;

.field public static final enum STABLE_SYNTHESIZED:LUb/f;


# instance fields
.field public final isStable:Z

.field public final isSynthesized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LUb/f;

    const-string v1, "NON_STABLE_DECLARED"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, v2}, LUb/f;-><init>(ILjava/lang/String;ZZ)V

    sput-object v0, LUb/f;->NON_STABLE_DECLARED:LUb/f;

    new-instance v1, LUb/f;

    const-string v3, "STABLE_DECLARED"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v4, v2}, LUb/f;-><init>(ILjava/lang/String;ZZ)V

    sput-object v1, LUb/f;->STABLE_DECLARED:LUb/f;

    new-instance v3, LUb/f;

    const-string v5, "NON_STABLE_SYNTHESIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v6, v5, v2, v4}, LUb/f;-><init>(ILjava/lang/String;ZZ)V

    sput-object v3, LUb/f;->NON_STABLE_SYNTHESIZED:LUb/f;

    new-instance v2, LUb/f;

    const-string v5, "STABLE_SYNTHESIZED"

    const/4 v6, 0x3

    invoke-direct {v2, v6, v5, v4, v4}, LUb/f;-><init>(ILjava/lang/String;ZZ)V

    sput-object v2, LUb/f;->STABLE_SYNTHESIZED:LUb/f;

    filled-new-array {v0, v1, v3, v2}, [LUb/f;

    move-result-object v0

    sput-object v0, LUb/f;->$VALUES:[LUb/f;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, LUb/f;->isStable:Z

    iput-boolean p4, p0, LUb/f;->isSynthesized:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LUb/f;
    .locals 1

    const-class v0, LUb/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LUb/f;

    return-object p0
.end method

.method public static values()[LUb/f;
    .locals 1

    sget-object v0, LUb/f;->$VALUES:[LUb/f;

    invoke-virtual {v0}, [LUb/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LUb/f;

    return-object v0
.end method
