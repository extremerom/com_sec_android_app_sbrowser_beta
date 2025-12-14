.class public final enum Ljc/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ljc/t;

.field public static final enum DEBUG:Ljc/t;

.field public static final enum NONE:Ljc/t;

.field public static final enum PRETTY:Ljc/t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljc/t;

    const-string v1, "PRETTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljc/t;->PRETTY:Ljc/t;

    new-instance v1, Ljc/t;

    const-string v2, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljc/t;->DEBUG:Ljc/t;

    new-instance v2, Ljc/t;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljc/t;->NONE:Ljc/t;

    filled-new-array {v0, v1, v2}, [Ljc/t;

    move-result-object v0

    sput-object v0, Ljc/t;->$VALUES:[Ljc/t;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ljc/t;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljc/t;
    .locals 1

    const-class v0, Ljc/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljc/t;

    return-object p0
.end method

.method public static values()[Ljc/t;
    .locals 1

    sget-object v0, Ljc/t;->$VALUES:[Ljc/t;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljc/t;

    return-object v0
.end method
