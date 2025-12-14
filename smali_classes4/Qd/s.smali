.class public final LQd/s;
.super LQd/n;
.source "SourceFile"


# instance fields
.field public final j:LRd/d;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/F;LQd/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, LQd/n;-><init>(Lorg/jsoup/parser/F;Ljava/lang/String;LQd/c;)V

    new-instance p1, LRd/d;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LQd/s;->j:LRd/d;

    return-void
.end method


# virtual methods
.method public final D()LQd/n;
    .locals 0

    invoke-super {p0}, LQd/n;->D()LQd/n;

    move-result-object p0

    check-cast p0, LQd/s;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, LQd/n;->D()LQd/n;

    move-result-object p0

    check-cast p0, LQd/s;

    return-object p0
.end method

.method public final h()LQd/u;
    .locals 0

    invoke-super {p0}, LQd/n;->D()LQd/n;

    move-result-object p0

    check-cast p0, LQd/s;

    return-object p0
.end method

.method public final x(LQd/u;)V
    .locals 0

    invoke-super {p0, p1}, LQd/u;->x(LQd/u;)V

    iget-object p0, p0, LQd/s;->j:LRd/d;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
