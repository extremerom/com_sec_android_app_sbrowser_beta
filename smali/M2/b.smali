.class public final LM2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL2/b;


# instance fields
.field public final a:Lo3/f;


# direct methods
.method public constructor <init>(Lo3/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/b;->a:Lo3/f;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, LM2/b;->a:Lo3/f;

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    check-cast p0, LT2/e;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final h0(ZLsb/n;Lib/c;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LM2/b;->a:Lo3/f;

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    check-cast p0, LT2/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LM2/e;

    new-instance v0, LM2/a;

    invoke-interface {p0}, LT2/e;->getWritableDatabase()LT2/a;

    move-result-object p0

    invoke-direct {v0, p0}, LM2/a;-><init>(LT2/a;)V

    invoke-direct {p1, v0}, LM2/e;-><init>(LM2/a;)V

    invoke-interface {p2, p1, p3}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
