.class public final LY2/B;
.super LY2/h0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:LY2/D;


# direct methods
.method public constructor <init>(LY2/D;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY2/B;->e:LY2/D;

    iput-object p2, p0, LY2/B;->a:Ljava/lang/Object;

    iput-object p3, p0, LY2/B;->b:Ljava/util/ArrayList;

    iput-object p4, p0, LY2/B;->c:Ljava/lang/Object;

    iput-object p5, p0, LY2/B;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(LY2/f0;)V
    .locals 0

    invoke-virtual {p1, p0}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    return-void
.end method

.method public final onTransitionStart(LY2/f0;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, LY2/B;->e:LY2/D;

    iget-object v1, p0, LY2/B;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, LY2/B;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, LY2/D;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, LY2/B;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object p0, p0, LY2/B;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0, p1}, LY2/D;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
