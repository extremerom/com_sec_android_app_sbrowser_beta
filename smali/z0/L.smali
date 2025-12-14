.class public final Lz0/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LA7/h;

.field public b:Lz0/t;

.field public final c:Lz0/K;

.field public final d:Lz0/K;

.field public final e:Lz0/K;


# direct methods
.method public constructor <init>(LA7/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/L;->a:LA7/h;

    new-instance p1, Lz0/K;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lz0/K;-><init>(Lz0/L;I)V

    iput-object p1, p0, Lz0/L;->c:Lz0/K;

    new-instance p1, Lz0/K;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lz0/K;-><init>(Lz0/L;I)V

    iput-object p1, p0, Lz0/L;->d:Lz0/K;

    new-instance p1, Lz0/K;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lz0/K;-><init>(Lz0/L;I)V

    iput-object p1, p0, Lz0/L;->e:Lz0/K;

    return-void
.end method


# virtual methods
.method public final a()Lz0/t;
    .locals 1

    iget-object p0, p0, Lz0/L;->b:Lz0/t;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SubcomposeLayoutState is not attached to SubcomposeLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
