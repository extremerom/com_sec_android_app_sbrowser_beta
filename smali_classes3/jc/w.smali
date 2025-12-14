.class public abstract enum Ljc/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ljc/w;

.field public static final enum HTML:Ljc/w;

.field public static final enum PLAIN:Ljc/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljc/v;

    invoke-direct {v0}, Ljc/v;-><init>()V

    sput-object v0, Ljc/w;->PLAIN:Ljc/w;

    new-instance v1, Ljc/u;

    invoke-direct {v1}, Ljc/u;-><init>()V

    sput-object v1, Ljc/w;->HTML:Ljc/w;

    const/4 v2, 0x2

    new-array v2, v2, [Ljc/w;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Ljc/w;->$VALUES:[Ljc/w;

    invoke-static {v2}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ljc/w;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljc/w;
    .locals 1

    const-class v0, Ljc/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljc/w;

    return-object p0
.end method

.method public static values()[Ljc/w;
    .locals 1

    sget-object v0, Ljc/w;->$VALUES:[Ljc/w;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljc/w;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method
