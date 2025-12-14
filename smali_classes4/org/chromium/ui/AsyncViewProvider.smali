.class public Lorg/chromium/ui/AsyncViewProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;
.implements Lorg/chromium/ui/ViewProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Landroid/view/View;",
        ">;",
        "Lorg/chromium/ui/ViewProvider<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mResId:I

.field private mView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mViewStub:Lorg/chromium/ui/AsyncViewStub;


# virtual methods
.method public inflate()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/AsyncViewProvider;->mViewStub:Lorg/chromium/ui/AsyncViewStub;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/AsyncViewStub;

    invoke-virtual {p0}, Lorg/chromium/ui/AsyncViewStub;->inflate()V

    return-void
.end method

.method public onResult(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/AsyncViewProvider;->mResId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/AsyncViewProvider;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/ui/AsyncViewProvider;->mViewStub:Lorg/chromium/ui/AsyncViewStub;

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/AsyncViewProvider;->onResult(Landroid/view/View;)V

    return-void
.end method
