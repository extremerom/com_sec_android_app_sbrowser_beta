.class public interface abstract Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabAnimatorDelegate"
.end annotation


# virtual methods
.method public abstract getBottomMargin()I
.end method

.method public abstract getCurrentTabBitmap(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getTopMargin()I
.end method

.method public abstract isMainViewShowing()Z
.end method

.method public abstract isSplitMode()Z
.end method

.method public abstract isSummarizedViewShowing()Z
.end method
