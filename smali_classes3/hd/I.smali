.class public final Lhd/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lhd/i;


# static fields
.field public static final B:Ljava/util/List;

.field public static final C:Ljava/util/List;


# instance fields
.field public final A:LI3/c;

.field public final a:LT3/f;

.field public final b:LB3/c;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Lf1/g;

.field public final f:Z

.field public final g:Lhd/b;

.field public final h:Z

.field public final i:Z

.field public final j:Lhd/b;

.field public final k:Lhd/g;

.field public final l:Lhd/b;

.field public final m:Ljava/net/Proxy;

.field public final n:Ljava/net/ProxySelector;

.field public final o:Lhd/b;

.field public final p:Ljavax/net/SocketFactory;

.field public final q:Ljavax/net/ssl/SSLSocketFactory;

.field public final r:Ljavax/net/ssl/X509TrustManager;

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/List;

.field public final u:Lud/c;

.field public final v:Lhd/m;

.field public final w:LG5/o2;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lhd/K;->HTTP_2:Lhd/K;

    sget-object v1, Lhd/K;->HTTP_1_1:Lhd/K;

    filled-new-array {v0, v1}, [Lhd/K;

    move-result-object v0

    invoke-static {v0}, Lid/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lhd/I;->B:Ljava/util/List;

    sget-object v0, Lhd/q;->e:Lhd/q;

    sget-object v1, Lhd/q;->f:Lhd/q;

    filled-new-array {v0, v1}, [Lhd/q;

    move-result-object v0

    invoke-static {v0}, Lid/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lhd/I;->C:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lhd/H;

    invoke-direct {v0}, Lhd/H;-><init>()V

    invoke-direct {p0, v0}, Lhd/I;-><init>(Lhd/H;)V

    return-void
.end method

.method public constructor <init>(Lhd/H;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lhd/H;->a:LT3/f;

    iput-object v0, p0, Lhd/I;->a:LT3/f;

    iget-object v0, p1, Lhd/H;->b:LB3/c;

    iput-object v0, p0, Lhd/I;->b:LB3/c;

    iget-object v0, p1, Lhd/H;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lid/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhd/I;->c:Ljava/util/List;

    iget-object v0, p1, Lhd/H;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lid/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhd/I;->d:Ljava/util/List;

    iget-object v0, p1, Lhd/H;->e:Lf1/g;

    iput-object v0, p0, Lhd/I;->e:Lf1/g;

    iget-boolean v0, p1, Lhd/H;->f:Z

    iput-boolean v0, p0, Lhd/I;->f:Z

    iget-object v0, p1, Lhd/H;->g:Lhd/b;

    iput-object v0, p0, Lhd/I;->g:Lhd/b;

    iget-boolean v0, p1, Lhd/H;->h:Z

    iput-boolean v0, p0, Lhd/I;->h:Z

    iget-boolean v0, p1, Lhd/H;->i:Z

    iput-boolean v0, p0, Lhd/I;->i:Z

    iget-object v0, p1, Lhd/H;->j:Lhd/b;

    iput-object v0, p0, Lhd/I;->j:Lhd/b;

    iget-object v0, p1, Lhd/H;->k:Lhd/g;

    iput-object v0, p0, Lhd/I;->k:Lhd/g;

    iget-object v0, p1, Lhd/H;->l:Lhd/b;

    iput-object v0, p0, Lhd/I;->l:Lhd/b;

    iget-object v0, p1, Lhd/H;->m:Ljava/net/Proxy;

    iput-object v0, p0, Lhd/I;->m:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    sget-object v0, Lsd/a;->a:Lsd/a;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lsd/a;->a:Lsd/a;

    :cond_1
    :goto_0
    iput-object v0, p0, Lhd/I;->n:Ljava/net/ProxySelector;

    iget-object v0, p1, Lhd/H;->n:Lhd/b;

    iput-object v0, p0, Lhd/I;->o:Lhd/b;

    iget-object v0, p1, Lhd/H;->o:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lhd/I;->p:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lhd/H;->r:Ljava/util/List;

    iput-object v0, p0, Lhd/I;->s:Ljava/util/List;

    iget-object v1, p1, Lhd/H;->s:Ljava/util/List;

    iput-object v1, p0, Lhd/I;->t:Ljava/util/List;

    iget-object v1, p1, Lhd/H;->t:Lud/c;

    iput-object v1, p0, Lhd/I;->u:Lud/c;

    iget v1, p1, Lhd/H;->w:I

    iput v1, p0, Lhd/I;->x:I

    iget v1, p1, Lhd/H;->x:I

    iput v1, p0, Lhd/I;->y:I

    iget v1, p1, Lhd/H;->y:I

    iput v1, p0, Lhd/I;->z:I

    new-instance v1, LI3/c;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, LI3/c;-><init>(I)V

    iput-object v1, p0, Lhd/I;->A:LI3/c;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhd/q;

    iget-boolean v1, v1, Lhd/q;->a:Z

    if-eqz v1, :cond_3

    iget-object v0, p1, Lhd/H;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lhd/I;->q:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lhd/H;->v:LG5/o2;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lhd/I;->w:LG5/o2;

    iget-object v1, p1, Lhd/H;->q:Ljavax/net/ssl/X509TrustManager;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v1, p0, Lhd/I;->r:Ljavax/net/ssl/X509TrustManager;

    iget-object p1, p1, Lhd/H;->u:Lhd/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lhd/m;->b:LG5/o2;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Lhd/m;

    iget-object p1, p1, Lhd/m;->a:Ljava/util/Set;

    invoke-direct {v1, p1, v0}, Lhd/m;-><init>(Ljava/util/Set;LG5/o2;)V

    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lhd/I;->v:Lhd/m;

    goto :goto_4

    :cond_5
    sget-object v0, Lqd/n;->a:Lqd/n;

    sget-object v0, Lqd/n;->a:Lqd/n;

    invoke-virtual {v0}, Lqd/n;->n()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lhd/I;->r:Ljavax/net/ssl/X509TrustManager;

    sget-object v1, Lqd/n;->a:Lqd/n;

    invoke-virtual {v1, v0}, Lqd/n;->m(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lhd/I;->q:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v1, Lqd/n;->a:Lqd/n;

    invoke-virtual {v1, v0}, Lqd/n;->b(Ljavax/net/ssl/X509TrustManager;)LG5/o2;

    move-result-object v0

    iput-object v0, p0, Lhd/I;->w:LG5/o2;

    iget-object p1, p1, Lhd/H;->u:Lhd/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lhd/m;->b:LG5/o2;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Lhd/m;

    iget-object p1, p1, Lhd/m;->a:Ljava/util/Set;

    invoke-direct {v1, p1, v0}, Lhd/m;-><init>(Ljava/util/Set;LG5/o2;)V

    move-object p1, v1

    :goto_2
    iput-object p1, p0, Lhd/I;->v:Lhd/m;

    goto :goto_4

    :cond_7
    :goto_3
    iput-object v2, p0, Lhd/I;->q:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v2, p0, Lhd/I;->w:LG5/o2;

    iput-object v2, p0, Lhd/I;->r:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lhd/m;->c:Lhd/m;

    iput-object p1, p0, Lhd/I;->v:Lhd/m;

    :goto_4
    iget-object p1, p0, Lhd/I;->c:Ljava/util/List;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object p1, p0, Lhd/I;->d:Ljava/util/List;

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p1, p0, Lhd/I;->s:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    iget-object v1, p0, Lhd/I;->r:Ljavax/net/ssl/X509TrustManager;

    iget-object v2, p0, Lhd/I;->w:LG5/o2;

    iget-object v3, p0, Lhd/I;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhd/q;

    iget-boolean v0, v0, Lhd/q;->a:Z

    if-eqz v0, :cond_9

    if-eqz v3, :cond_c

    if-eqz v2, :cond_b

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "x509TrustManager == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "certificateChainCleaner == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sslSocketFactory == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_5
    const-string p1, "Check failed."

    if-nez v3, :cond_11

    if-nez v2, :cond_10

    if-nez v1, :cond_f

    iget-object p0, p0, Lhd/I;->v:Lhd/m;

    sget-object v0, Lhd/m;->c:Lhd/m;

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    :goto_6
    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Null network interceptor: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Null interceptor: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
