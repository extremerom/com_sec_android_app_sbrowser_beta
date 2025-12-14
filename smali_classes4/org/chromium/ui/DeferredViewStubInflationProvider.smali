.class public Lorg/chromium/ui/DeferredViewStubInflationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/ViewProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/ui/ViewProvider<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mViewStub:Landroid/view/ViewStub;


# virtual methods
.method public inflate()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DeferredViewStubInflationProvider;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method
