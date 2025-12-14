.class Lorg/chromium/ui/InsetObserver$1;
.super Lf1/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/InsetObserver;-><init>(Lorg/chromium/ui/base/ImmutableWeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/InsetObserver;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/InsetObserver;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/InsetObserver$1;->this$0:Lorg/chromium/ui/InsetObserver;

    invoke-direct {p0, p2}, Lf1/d0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Lf1/l0;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver$1;->this$0:Lorg/chromium/ui/InsetObserver;

    invoke-static {p0}, Lorg/chromium/ui/InsetObserver;->a(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;

    invoke-interface {v0, p1}, Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;->onEnd(Lf1/l0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrepare(Lf1/l0;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver$1;->this$0:Lorg/chromium/ui/InsetObserver;

    invoke-static {p0}, Lorg/chromium/ui/InsetObserver;->a(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;

    invoke-interface {v0, p1}, Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;->onPrepare(Lf1/l0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onProgress(Lf1/w0;Ljava/util/List;)Lf1/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf1/w0;",
            "Ljava/util/List<",
            "Lf1/l0;",
            ">;)",
            "Lf1/w0;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver$1;->this$0:Lorg/chromium/ui/InsetObserver;

    invoke-static {p0}, Lorg/chromium/ui/InsetObserver;->a(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;

    invoke-interface {v0, p1, p2}, Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;->onProgress(Lf1/w0;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public onStart(Lf1/l0;Lf1/c0;)Lf1/c0;
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver$1;->this$0:Lorg/chromium/ui/InsetObserver;

    invoke-static {p0}, Lorg/chromium/ui/InsetObserver;->a(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;

    invoke-interface {v0, p1, p2}, Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;->onStart(Lf1/l0;Lf1/c0;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method
