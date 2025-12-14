.class public final enum LSb/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LSb/C;

.field public static final Companion:LSb/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum IGNORE:LSb/C;

.field public static final enum STRICT:LSb/C;

.field public static final enum WARN:LSb/C;


# instance fields
.field private final description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LSb/C;

    const-string v1, "ignore"

    const-string v2, "IGNORE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LSb/C;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LSb/C;->IGNORE:LSb/C;

    new-instance v1, LSb/C;

    const-string v2, "warn"

    const-string v3, "WARN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LSb/C;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LSb/C;->WARN:LSb/C;

    new-instance v2, LSb/C;

    const-string v3, "strict"

    const-string v4, "STRICT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LSb/C;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LSb/C;->STRICT:LSb/C;

    filled-new-array {v0, v1, v2}, [LSb/C;

    move-result-object v0

    sput-object v0, LSb/C;->$VALUES:[LSb/C;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LSb/C;->$ENTRIES:Llb/a;

    new-instance v0, LSb/B;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LSb/C;->Companion:LSb/B;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LSb/C;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LSb/C;
    .locals 1

    const-class v0, LSb/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LSb/C;

    return-object p0
.end method

.method public static values()[LSb/C;
    .locals 1

    sget-object v0, LSb/C;->$VALUES:[LSb/C;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LSb/C;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LSb/C;->description:Ljava/lang/String;

    return-object p0
.end method
