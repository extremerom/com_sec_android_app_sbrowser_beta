.class Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;
.super Landroid/view/autofill/AutofillManager$AutofillCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/AutofillManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutofillInputUiMonitor"
.end annotation


# instance fields
.field private mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/chromium/components/autofill/AutofillManagerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/components/autofill/AutofillManagerWrapper;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$AutofillCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAutofillEvent(Landroid/view/View;II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p2}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->a(Lorg/chromium/components/autofill/AutofillManagerWrapper;Z)V

    if-ne p3, p1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->notifyInputUiChange()V

    :cond_2
    return-void
.end method
