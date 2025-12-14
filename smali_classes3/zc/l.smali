.class public final Lzc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzc/k;


# instance fields
.field public final c:Lzc/e;

.field public final d:Lkc/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lzc/e;->a:Lzc/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzc/l;->c:Lzc/e;

    new-instance v0, Lkc/o;

    sget-object v1, Lkc/o;->d:Lkc/c;

    invoke-direct {v0, v1}, Lkc/o;-><init>(Lzc/c;)V

    iput-object v0, p0, Lzc/l;->d:Lkc/o;

    return-void
.end method


# virtual methods
.method public final a(Lyc/w;Lyc/w;)Z
    .locals 7

    const-string v0, "a"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lzc/f;->a:Lzc/f;

    iget-object v4, p0, Lzc/l;->c:Lzc/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Lzc/g;->l(ZZLzc/m;Lzc/e;Lzc/f;I)Lyc/K;

    move-result-object p0

    invoke-virtual {p1}, Lyc/w;->I0()Lyc/d0;

    move-result-object p1

    invoke-virtual {p2}, Lyc/w;->I0()Lyc/d0;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lyc/e;->h(Lyc/K;LBc/d;LBc/d;)Z

    move-result p0

    return p0
.end method

.method public final b(Lyc/w;Lyc/w;)Z
    .locals 7

    const-string v0, "subtype"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertype"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lzc/f;->a:Lzc/f;

    iget-object v4, p0, Lzc/l;->c:Lzc/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Lzc/g;->l(ZZLzc/m;Lzc/e;Lzc/f;I)Lyc/K;

    move-result-object p0

    invoke-virtual {p1}, Lyc/w;->I0()Lyc/d0;

    move-result-object p1

    invoke-virtual {p2}, Lyc/w;->I0()Lyc/d0;

    move-result-object p2

    sget-object v0, Lyc/e;->a:Lyc/e;

    invoke-static {v0, p0, p1, p2}, Lyc/e;->n(Lyc/e;Lyc/K;LBc/d;LBc/d;)Z

    move-result p0

    return p0
.end method
