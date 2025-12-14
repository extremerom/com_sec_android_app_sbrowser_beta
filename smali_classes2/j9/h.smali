.class public abstract Lj9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:Ljava/lang/Float;

.field public c:Z

.field public final d:Lq9/f;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Landroid/view/ViewTreeObserver;

.field public h:Z

.field public i:Lj9/f;

.field public final j:Lj9/c;

.field public final k:Lj9/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj9/h;->a:Z

    iput-boolean v0, p0, Lj9/h;->c:Z

    new-instance v0, Lq9/f;

    invoke-direct {v0}, Lq9/f;-><init>()V

    iput-object v0, p0, Lj9/h;->d:Lq9/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj9/h;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj9/h;->f:Ljava/util/ArrayList;

    sget-object v0, Lj9/f;->READY:Lj9/f;

    iput-object v0, p0, Lj9/h;->i:Lj9/f;

    new-instance v0, Lj9/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lj9/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj9/h;->j:Lj9/c;

    new-instance v0, Lj9/d;

    invoke-direct {v0, p0}, Lj9/d;-><init>(Lj9/h;)V

    iput-object v0, p0, Lj9/h;->k:Lj9/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lj9/h;->h:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lj9/h;->e(Landroid/content/Context;)V

    iput-boolean v2, p0, Lj9/h;->h:Z

    :cond_0
    iget-object v0, p0, Lj9/h;->d:Lq9/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lq9/f;->a:LMd/c;

    invoke-virtual {v1, p1}, LMd/c;->d(Landroid/view/View;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lj9/h;->j:Lj9/c;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addOnGlobalLayoutListener observer: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VibeRenderEffectBase"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    iget-object p1, p0, Lj9/h;->i:Lj9/f;

    sget-object p2, Lj9/f;->RUNNING:Lj9/f;

    if-eq p1, p2, :cond_5

    invoke-virtual {p0}, Lj9/h;->i()V

    :cond_5
    return-void
.end method

.method public abstract b()Landroid/graphics/RenderEffect;
.end method

.method public abstract c()Landroid/graphics/RuntimeShader;
.end method

.method public final d()Z
    .locals 4

    iget-object p0, p0, Lj9/h;->d:Lq9/f;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract e(Landroid/content/Context;)V
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lj9/h;->i:Lj9/f;

    sget-object v1, Lj9/f;->RUNNING:Lj9/f;

    const-string v2, "VibeRenderEffectBase"

    if-ne v0, v1, :cond_0

    sget-object v0, Lj9/f;->READY:Lj9/f;

    iput-object v0, p0, Lj9/h;->i:Lj9/f;

    const-string v0, "removeFrameCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lj9/h;->k:Lj9/d;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "effect is already in ready state."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final g(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lj9/h;->b:Ljava/lang/Float;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Set FrameRate to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibeRenderEffectBase"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h(Landroid/view/View;F)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lj9/h;->i:Lj9/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start - runningState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibeRenderEffectBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lj9/h;->i:Lj9/f;

    sget-object v2, Lj9/f;->RUNNING:Lj9/f;

    if-eq v0, v2, :cond_1

    sget-object v3, Lj9/f;->READY:Lj9/f;

    if-ne v0, v3, :cond_0

    iput-object v2, p0, Lj9/h;->i:Lj9/f;

    const-string v0, "attachFrameCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lj9/h;->k:Lj9/d;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "effect is already in running state."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    new-instance v0, Lca/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lca/c;-><init>(I)V

    iget-object p0, p0, Lj9/h;->d:Lq9/f;

    invoke-virtual {p0, v0}, Lq9/f;->g(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final j(Z)V
    .locals 3

    iget-boolean v0, p0, Lj9/h;->c:Z

    or-int/2addr p1, v0

    iget-object v0, p0, Lj9/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb/k;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, LH9/d;

    const/16 v0, 0x15

    invoke-direct {p1, v0, p0}, LH9/d;-><init>(ILjava/lang/Object;)V

    iget-object v0, p0, Lj9/h;->d:Lq9/f;

    invoke-virtual {v0, p1}, Lq9/f;->g(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj9/h;->c:Z

    :cond_1
    return-void
.end method

.method public final k(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj9/h;->c:Z

    invoke-virtual {p0}, Lj9/h;->c()Landroid/graphics/RuntimeShader;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
