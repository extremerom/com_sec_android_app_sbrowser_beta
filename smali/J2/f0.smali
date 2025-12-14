.class public final LJ2/f0;
.super LJ2/n;
.source "SourceFile"


# instance fields
.field public final synthetic b:LJ2/X;


# direct methods
.method public constructor <init>([Ljava/lang/String;LJ2/X;)V
    .locals 0

    iput-object p2, p0, LJ2/f0;->b:LJ2/X;

    invoke-direct {p0, p1}, LJ2/n;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 2

    const-string v0, "tables"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LF/a;->m()LF/a;

    move-result-object p1

    new-instance v0, LG6/e;

    iget-object p0, p0, LJ2/f0;->b:LJ2/X;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    iget-object p0, p1, LF/a;->a:LF/c;

    invoke-virtual {p0}, LF/c;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, LG6/e;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, LF/a;->n(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
