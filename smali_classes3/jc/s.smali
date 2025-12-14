.class public final enum Ljc/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ljc/s;

.field public static final enum ALL:Ljc/s;

.field public static final enum NONE:Ljc/s;

.field public static final enum ONLY_NON_SYNTHESIZED:Ljc/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljc/s;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljc/s;->ALL:Ljc/s;

    new-instance v1, Ljc/s;

    const-string v2, "ONLY_NON_SYNTHESIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljc/s;->ONLY_NON_SYNTHESIZED:Ljc/s;

    new-instance v2, Ljc/s;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljc/s;->NONE:Ljc/s;

    filled-new-array {v0, v1, v2}, [Ljc/s;

    move-result-object v0

    sput-object v0, Ljc/s;->$VALUES:[Ljc/s;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ljc/s;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljc/s;
    .locals 1

    const-class v0, Ljc/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljc/s;

    return-object p0
.end method

.method public static values()[Ljc/s;
    .locals 1

    sget-object v0, Ljc/s;->$VALUES:[Ljc/s;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljc/s;

    return-object v0
.end method
