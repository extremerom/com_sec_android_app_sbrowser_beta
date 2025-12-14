.class public final enum Lhd/K;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lhd/K;

.field public static final Companion:Lhd/J;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum H2_PRIOR_KNOWLEDGE:Lhd/K;

.field public static final enum HTTP_1_0:Lhd/K;

.field public static final enum HTTP_1_1:Lhd/K;

.field public static final enum HTTP_2:Lhd/K;

.field public static final enum QUIC:Lhd/K;

.field public static final enum SPDY_3:Lhd/K;
    .annotation runtime Lkotlin/Deprecated;
    .end annotation
.end field


# instance fields
.field private final protocol:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lhd/K;

    const-string v1, "http/1.0"

    const-string v2, "HTTP_1_0"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lhd/K;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lhd/K;->HTTP_1_0:Lhd/K;

    new-instance v1, Lhd/K;

    const-string v2, "http/1.1"

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lhd/K;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lhd/K;->HTTP_1_1:Lhd/K;

    new-instance v2, Lhd/K;

    const-string v3, "spdy/3.1"

    const-string v4, "SPDY_3"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lhd/K;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lhd/K;->SPDY_3:Lhd/K;

    new-instance v3, Lhd/K;

    const-string v4, "h2"

    const-string v5, "HTTP_2"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lhd/K;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lhd/K;->HTTP_2:Lhd/K;

    new-instance v4, Lhd/K;

    const-string v5, "h2_prior_knowledge"

    const-string v6, "H2_PRIOR_KNOWLEDGE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lhd/K;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lhd/K;->H2_PRIOR_KNOWLEDGE:Lhd/K;

    new-instance v5, Lhd/K;

    const-string v6, "quic"

    const-string v7, "QUIC"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lhd/K;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lhd/K;->QUIC:Lhd/K;

    filled-new-array/range {v0 .. v5}, [Lhd/K;

    move-result-object v0

    sput-object v0, Lhd/K;->$VALUES:[Lhd/K;

    new-instance v0, Lhd/J;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhd/K;->Companion:Lhd/J;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lhd/K;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lhd/K;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhd/K;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lhd/K;
    .locals 1

    const-class v0, Lhd/K;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhd/K;

    return-object p0
.end method

.method public static values()[Lhd/K;
    .locals 1

    sget-object v0, Lhd/K;->$VALUES:[Lhd/K;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhd/K;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhd/K;->protocol:Ljava/lang/String;

    return-object p0
.end method
