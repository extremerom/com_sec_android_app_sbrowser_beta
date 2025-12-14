.class public final Lzc/a;
.super Lyc/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lzc/b;

.field public final synthetic b:Lyc/Y;


# direct methods
.method public constructor <init>(Lzc/b;Lyc/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc/a;->a:Lzc/b;

    iput-object p2, p0, Lzc/a;->b:Lyc/Y;

    return-void
.end method


# virtual methods
.method public final D(Lyc/K;LBc/d;)LBc/e;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lzc/a;->a:Lzc/b;

    invoke-interface {p1, p2}, Lzc/b;->n(LBc/d;)Lyc/A;

    move-result-object p2

    sget-object v0, Lyc/e0;->INVARIANT:Lyc/e0;

    iget-object p0, p0, Lzc/a;->b:Lyc/Y;

    invoke-virtual {p0, p2, v0}, Lyc/Y;->g(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p0

    invoke-interface {p1, p0}, Lzc/b;->A(Lyc/w;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method
