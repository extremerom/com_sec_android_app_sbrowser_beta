.class interface abstract Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LiveTextControllerDelegate"
.end annotation


# virtual methods
.method public abstract clearExtractTextInfo()V
.end method

.method public getBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getTopMargin()I
.end method

.method public getVisibleViewRect()Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public isProgressBarVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract origin()Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;
.end method

.method public requestUpdatedElementRect()V
    .locals 0

    return-void
.end method

.method public scrollBy(FF)V
    .locals 0

    return-void
.end method

.method public updateBrowserControlsState(I)V
    .locals 0

    return-void
.end method
