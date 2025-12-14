.class public final Lz2/h;
.super Lz2/i;
.source "SourceFile"


# instance fields
.field public final a:LA2/d;


# direct methods
.method public constructor <init>(LA2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/h;->a:LA2/d;

    return-void
.end method


# virtual methods
.method public a(LA2/b;)Lcom/google/common/util/concurrent/y;
    .locals 3
    .param p1    # LA2/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/b;",
            ")",
            "Lcom/google/common/util/concurrent/y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "deletionRequest"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->a:LWc/f;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lz2/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lz2/a;-><init>(Lz2/h;LA2/b;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v1, p0}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p0

    invoke-static {p0}, LG5/F2;->a(LNc/I;)LK0/l;

    move-result-object p0

    return-object p0
.end method

.method public c(LA2/n;)Lcom/google/common/util/concurrent/y;
    .locals 3
    .param p1    # LA2/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$RegisterSourceOptIn;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/n;",
            ")",
            "Lcom/google/common/util/concurrent/y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->a:LWc/f;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lz2/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lz2/d;-><init>(Lz2/h;LA2/n;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v1, p0}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p0

    invoke-static {p0}, LG5/F2;->a(LNc/I;)LK0/l;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroid/net/Uri;)Lcom/google/common/util/concurrent/y;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/util/concurrent/y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "trigger"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->a:LWc/f;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lz2/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lz2/e;-><init>(Lz2/h;Landroid/net/Uri;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v1, p0}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p0

    invoke-static {p0}, LG5/F2;->a(LNc/I;)LK0/l;

    move-result-object p0

    return-object p0
.end method

.method public e(LA2/p;)Lcom/google/common/util/concurrent/y;
    .locals 3
    .param p1    # LA2/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/p;",
            ")",
            "Lcom/google/common/util/concurrent/y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->a:LWc/f;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lz2/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lz2/f;-><init>(Lz2/h;LA2/p;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v1, p0}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p0

    invoke-static {p0}, LG5/F2;->a(LNc/I;)LK0/l;

    move-result-object p0

    return-object p0
.end method

.method public f(LA2/s;)Lcom/google/common/util/concurrent/y;
    .locals 3
    .param p1    # LA2/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/s;",
            ")",
            "Lcom/google/common/util/concurrent/y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->a:LWc/f;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lz2/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lz2/g;-><init>(Lz2/h;LA2/s;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v1, p0}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p0

    invoke-static {p0}, LG5/F2;->a(LNc/I;)LK0/l;

    move-result-object p0

    return-object p0
.end method

.method public g()Lcom/google/common/util/concurrent/y;
    .locals 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LNc/N;->a:LWc/f;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lz2/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz2/b;-><init>(Lz2/h;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v1, p0}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p0

    invoke-static {p0}, LG5/F2;->a(LNc/I;)LK0/l;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/net/Uri;Landroid/view/InputEvent;)Lcom/google/common/util/concurrent/y;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/InputEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            ")",
            "Lcom/google/common/util/concurrent/y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "attributionSource"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->a:LWc/f;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lz2/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lz2/c;-><init>(Lz2/h;Landroid/net/Uri;Landroid/view/InputEvent;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v1, p0}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p0

    invoke-static {p0}, LG5/F2;->a(LNc/I;)LK0/l;

    move-result-object p0

    return-object p0
.end method
