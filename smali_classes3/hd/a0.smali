.class public final enum Lhd/a0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lhd/a0;

.field public static final Companion:Lhd/Z;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum SSL_3_0:Lhd/a0;

.field public static final enum TLS_1_0:Lhd/a0;

.field public static final enum TLS_1_1:Lhd/a0;

.field public static final enum TLS_1_2:Lhd/a0;

.field public static final enum TLS_1_3:Lhd/a0;


# instance fields
.field private final javaName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lhd/a0;

    const-string v1, "TLSv1.3"

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lhd/a0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lhd/a0;->TLS_1_3:Lhd/a0;

    new-instance v1, Lhd/a0;

    const-string v2, "TLSv1.2"

    const-string v3, "TLS_1_2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lhd/a0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lhd/a0;->TLS_1_2:Lhd/a0;

    new-instance v2, Lhd/a0;

    const-string v3, "TLSv1.1"

    const-string v4, "TLS_1_1"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lhd/a0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lhd/a0;->TLS_1_1:Lhd/a0;

    new-instance v3, Lhd/a0;

    const-string v4, "TLSv1"

    const-string v5, "TLS_1_0"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lhd/a0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lhd/a0;->TLS_1_0:Lhd/a0;

    new-instance v4, Lhd/a0;

    const-string v5, "SSLv3"

    const-string v6, "SSL_3_0"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lhd/a0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lhd/a0;->SSL_3_0:Lhd/a0;

    filled-new-array {v0, v1, v2, v3, v4}, [Lhd/a0;

    move-result-object v0

    sput-object v0, Lhd/a0;->$VALUES:[Lhd/a0;

    new-instance v0, Lhd/Z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhd/a0;->Companion:Lhd/Z;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lhd/a0;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhd/a0;
    .locals 1

    const-class v0, Lhd/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhd/a0;

    return-object p0
.end method

.method public static values()[Lhd/a0;
    .locals 1

    sget-object v0, Lhd/a0;->$VALUES:[Lhd/a0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhd/a0;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhd/a0;->javaName:Ljava/lang/String;

    return-object p0
.end method
