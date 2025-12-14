.class public final Lhd/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LT3/f;

.field public b:LB3/c;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lf1/g;

.field public f:Z

.field public final g:Lhd/b;

.field public final h:Z

.field public final i:Z

.field public final j:Lhd/b;

.field public k:Lhd/g;

.field public final l:Lhd/b;

.field public m:Ljava/net/Proxy;

.field public final n:Lhd/b;

.field public final o:Ljavax/net/SocketFactory;

.field public p:Ljavax/net/ssl/SSLSocketFactory;

.field public q:Ljavax/net/ssl/X509TrustManager;

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Lud/c;

.field public final u:Lhd/m;

.field public v:LG5/o2;

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LT3/f;

    invoke-direct {v0}, LT3/f;-><init>()V

    iput-object v0, p0, Lhd/H;->a:LT3/f;

    new-instance v0, LB3/c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-direct {v0, v2, v3, v1}, LB3/c;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lhd/H;->b:LB3/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhd/H;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhd/H;->d:Ljava/util/ArrayList;

    new-instance v0, Lf1/g;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    iput-object v0, p0, Lhd/H;->e:Lf1/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhd/H;->f:Z

    sget-object v1, Lhd/b;->a:Lhd/b;

    iput-object v1, p0, Lhd/H;->g:Lhd/b;

    iput-boolean v0, p0, Lhd/H;->h:Z

    iput-boolean v0, p0, Lhd/H;->i:Z

    sget-object v0, Lhd/b;->b:Lhd/b;

    iput-object v0, p0, Lhd/H;->j:Lhd/b;

    sget-object v0, Lhd/b;->c:Lhd/b;

    iput-object v0, p0, Lhd/H;->l:Lhd/b;

    iput-object v1, p0, Lhd/H;->n:Lhd/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lhd/H;->o:Ljavax/net/SocketFactory;

    sget-object v0, Lhd/I;->C:Ljava/util/List;

    iput-object v0, p0, Lhd/H;->r:Ljava/util/List;

    sget-object v0, Lhd/I;->B:Ljava/util/List;

    iput-object v0, p0, Lhd/H;->s:Ljava/util/List;

    sget-object v0, Lud/c;->a:Lud/c;

    iput-object v0, p0, Lhd/H;->t:Lud/c;

    sget-object v0, Lhd/m;->c:Lhd/m;

    iput-object v0, p0, Lhd/H;->u:Lhd/m;

    const/16 v0, 0x2710

    iput v0, p0, Lhd/H;->w:I

    iput v0, p0, Lhd/H;->x:I

    iput v0, p0, Lhd/H;->y:I

    return-void
.end method


# virtual methods
.method public final a(Lhd/C;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lhd/H;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lid/b;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lhd/H;->w:I

    return-void
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lid/b;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lhd/H;->x:I

    return-void
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lid/b;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lhd/H;->y:I

    return-void
.end method
