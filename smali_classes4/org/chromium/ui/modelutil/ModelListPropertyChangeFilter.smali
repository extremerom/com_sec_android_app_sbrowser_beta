.class public Lorg/chromium/ui/modelutil/ModelListPropertyChangeFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/ListObservable$ListObserver;
.implements Lorg/chromium/ui/modelutil/PropertyObservable$PropertyObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/ui/modelutil/ListObservable$ListObserver<",
        "Ljava/lang/Void;",
        ">;",
        "Lorg/chromium/ui/modelutil/PropertyObservable$PropertyObserver<",
        "Lorg/chromium/ui/modelutil/PropertyKey;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

.field private final mOnPropertyChange:Ljava/lang/Runnable;

.field private final mPropertyKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackedPropertyModels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/ui/modelutil/PropertyModel;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onItemRangeInserted(Lorg/chromium/ui/modelutil/ListObservable;II)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/modelutil/ModelListPropertyChangeFilter;->mModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    add-int v1, p2, p1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object v1, v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-virtual {v1, p0}, Lorg/chromium/ui/modelutil/PropertyObservable;->addObserver(Lorg/chromium/ui/modelutil/PropertyObservable$PropertyObserver;)V

    iget-object v1, p0, Lorg/chromium/ui/modelutil/ModelListPropertyChangeFilter;->mTrackedPropertyModels:Ljava/util/Set;

    iget-object v0, v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListPropertyChangeFilter;->mOnPropertyChange:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic onPropertyChanged(Lorg/chromium/ui/modelutil/PropertyObservable;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/chromium/ui/modelutil/PropertyKey;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/modelutil/ModelListPropertyChangeFilter;->onPropertyChanged(Lorg/chromium/ui/modelutil/PropertyObservable;Lorg/chromium/ui/modelutil/PropertyKey;)V

    return-void
.end method

.method public onPropertyChanged(Lorg/chromium/ui/modelutil/PropertyObservable;Lorg/chromium/ui/modelutil/PropertyKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/modelutil/PropertyObservable<",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ">;",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lorg/chromium/ui/modelutil/ModelListPropertyChangeFilter;->mPropertyKeySet:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListPropertyChangeFilter;->mOnPropertyChange:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
