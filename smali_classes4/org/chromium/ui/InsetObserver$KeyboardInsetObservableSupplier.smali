.class Lorg/chromium/ui/InsetObserver$KeyboardInsetObservableSupplier;
.super Lorg/chromium/base/supplier/ObservableSupplierImpl;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/InsetObserver$WindowInsetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/InsetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyboardInsetObservableSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/supplier/ObservableSupplierImpl<",
        "Ljava/lang/Integer;",
        ">;",
        "Lorg/chromium/ui/InsetObserver$WindowInsetObserver;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/InsetObserver$KeyboardInsetObservableSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardInsetChanged(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method
