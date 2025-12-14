.class public final enum Ljc/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ljc/r;

.field public static final enum RENDER_OPEN:Ljc/r;

.field public static final enum RENDER_OPEN_OVERRIDE:Ljc/r;

.field public static final enum RENDER_OVERRIDE:Ljc/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljc/r;

    const-string v1, "RENDER_OVERRIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljc/r;->RENDER_OVERRIDE:Ljc/r;

    new-instance v1, Ljc/r;

    const-string v2, "RENDER_OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljc/r;->RENDER_OPEN:Ljc/r;

    new-instance v2, Ljc/r;

    const-string v3, "RENDER_OPEN_OVERRIDE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljc/r;->RENDER_OPEN_OVERRIDE:Ljc/r;

    filled-new-array {v0, v1, v2}, [Ljc/r;

    move-result-object v0

    sput-object v0, Ljc/r;->$VALUES:[Ljc/r;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ljc/r;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljc/r;
    .locals 1

    const-class v0, Ljc/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljc/r;

    return-object p0
.end method

.method public static values()[Ljc/r;
    .locals 1

    sget-object v0, Ljc/r;->$VALUES:[Ljc/r;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljc/r;

    return-object v0
.end method
