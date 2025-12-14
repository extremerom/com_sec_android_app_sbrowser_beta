.class interface abstract Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultListener"
.end annotation


# virtual methods
.method public abstract onFailure()V
.end method

.method public abstract onSuccess(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;)V
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation
.end method
