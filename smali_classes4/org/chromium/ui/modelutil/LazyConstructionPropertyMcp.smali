.class public Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/PropertyObservable$PropertyObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp$VisibilityPredicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/chromium/ui/modelutil/PropertyObservable<",
        "TP;>;V:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/ui/modelutil/PropertyObservable$PropertyObserver<",
        "TP;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mModel:Lorg/chromium/ui/modelutil/PropertyObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final mPendingProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TP;>;"
        }
    .end annotation
.end field

.field private mPendingViewCreation:Z

.field private mView:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mViewBinder:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder<",
            "TM;TV;TP;>;"
        }
    .end annotation
.end field

.field private final mViewProvider:Lorg/chromium/ui/ViewProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/ViewProvider<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mVisibilityPredicate:Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp$VisibilityPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp$VisibilityPredicate<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final mVisibilityProperty:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method private flushPendingUpdates()V
    .locals 6
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mPendingProperties:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mVisibilityProperty:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mViewBinder:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;

    iget-object v4, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mModel:Lorg/chromium/ui/modelutil/PropertyObservable;

    iget-object v5, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mView:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v2}, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;->bind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mViewBinder:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;

    iget-object v1, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mModel:Lorg/chromium/ui/modelutil/PropertyObservable;

    iget-object v2, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mView:Ljava/lang/Object;

    iget-object v3, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mVisibilityProperty:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;->bind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mPendingProperties:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lorg/chromium/ui/modelutil/PropertyObservable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/modelutil/PropertyObservable<",
            "TP;>;TP;)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mPendingProperties:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mVisibilityPredicate:Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp$VisibilityPredicate;

    iget-object v0, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mModel:Lorg/chromium/ui/modelutil/PropertyObservable;

    invoke-interface {p1, v0}, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp$VisibilityPredicate;->isVisible(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mVisibilityProperty:Ljava/lang/Object;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mView:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mPendingViewCreation:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mPendingViewCreation:Z

    iget-object p0, p0, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->mViewProvider:Lorg/chromium/ui/ViewProvider;

    invoke-interface {p0}, Lorg/chromium/ui/ViewProvider;->inflate()V

    return-void

    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/modelutil/LazyConstructionPropertyMcp;->flushPendingUpdates()V

    return-void
.end method
