.class public Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;
.super Lorg/chromium/base/supplier/ObservableSupplierImpl;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/lifetime/Destroyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/supplier/ObservableSupplierImpl<",
        "Lorg/chromium/ui/base/ViewportInsets;",
        ">;",
        "Lorg/chromium/base/lifetime/Destroyable;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBottomSheetInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInsetSupplierObserver:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardAccessoryInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualKeyboardMode:I
    .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    new-instance v0, Lcom/sec/terrace/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mInsetSupplierObserver:Lorg/chromium/base/Callback;

    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mVirtualKeyboardMode:I

    new-instance v0, Lorg/chromium/ui/base/ViewportInsets;

    invoke-direct {v0}, Lorg/chromium/ui/base/ViewportInsets;-><init>()V

    invoke-super {p0, v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private computeInsets()V
    .locals 8

    new-instance v0, Lorg/chromium/ui/base/ViewportInsets;

    invoke-direct {v0}, Lorg/chromium/ui/base/ViewportInsets;-><init>()V

    iget-object v1, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mKeyboardInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    invoke-direct {p0, v1}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->intFromSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mKeyboardAccessoryInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    invoke-direct {p0, v2}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->intFromSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)I

    move-result v2

    add-int v3, v1, v2

    iget-object v4, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mBottomSheetInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    invoke-direct {p0, v4}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->intFromSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)I

    move-result v4

    iput v2, v0, Lorg/chromium/ui/base/ViewportInsets;->viewVisibleHeightInset:I

    iget v5, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mVirtualKeyboardMode:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    iput v3, v0, Lorg/chromium/ui/base/ViewportInsets;->visualViewportBottomInset:I

    const/4 v3, 0x3

    if-eq v5, v3, :cond_1

    if-ne v5, v7, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    if-eqz v6, :cond_3

    neg-int v2, v1

    :cond_3
    add-int/2addr v2, v4

    iput v2, v0, Lorg/chromium/ui/base/ViewportInsets;->webContentsHeightInset:I

    invoke-super {p0, v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private intFromSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->computeInsets()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->setKeyboardInsetSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)V

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->setKeyboardAccessoryInsetSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)V

    return-void
.end method

.method public insetsAffectWebContentsSize()Z
    .locals 2

    iget v0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mVirtualKeyboardMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mBottomSheetInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/chromium/ui/base/ViewportInsets;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->set(Lorg/chromium/ui/base/ViewportInsets;)V

    return-void
.end method

.method public set(Lorg/chromium/ui/base/ViewportInsets;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "#set(...) should not be called directly on ApplicationViewportInsetSupplier."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setKeyboardAccessoryInsetSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mKeyboardAccessoryInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mInsetSupplierObserver:Lorg/chromium/base/Callback;

    invoke-interface {v0, v1}, Lorg/chromium/base/supplier/ObservableSupplier;->removeObserver(Lorg/chromium/base/Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mKeyboardAccessoryInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mInsetSupplierObserver:Lorg/chromium/base/Callback;

    invoke-interface {p1, p0}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->computeInsets()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setKeyboardInsetSupplier(Lorg/chromium/base/supplier/ObservableSupplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mKeyboardInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mInsetSupplierObserver:Lorg/chromium/base/Callback;

    invoke-interface {v0, v1}, Lorg/chromium/base/supplier/ObservableSupplier;->removeObserver(Lorg/chromium/base/Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mKeyboardInsetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mInsetSupplierObserver:Lorg/chromium/base/Callback;

    invoke-interface {p1, p0}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->computeInsets()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setVirtualKeyboardMode(I)V
    .locals 1
    .param p1    # I
        .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
        .end annotation
    .end param

    iget v0, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mVirtualKeyboardMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->mVirtualKeyboardMode:I

    invoke-direct {p0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->computeInsets()V

    return-void
.end method
