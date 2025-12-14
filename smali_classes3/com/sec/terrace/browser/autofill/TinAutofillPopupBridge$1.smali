.class Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/KeyboardVisibilityDelegate$KeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;-><init>(Landroid/view/View;JLorg/chromium/ui/base/WindowAndroid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;->this$0:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;->lambda$keyboardVisibilityChanged$0(Z)V

    return-void
.end method

.method private synthetic lambda$keyboardVisibilityChanged$0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;->this$0:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    invoke-static {v0}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->c(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;->this$0:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    invoke-static {p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->b(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)Lorg/chromium/components/autofill/AutofillPopup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;->this$0:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    invoke-static {p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->b(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)Lorg/chromium/components/autofill/AutofillPopup;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/DropdownPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;->this$0:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    iget-boolean v0, p1, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mLayoutRedrawRequested:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->d(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;->this$0:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    invoke-static {v0}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->d(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;->layoutRedrawRequested(J)V

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;->this$0:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->mLayoutRedrawRequested:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public keyboardVisibilityChanged(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/terrace/browser/autofill/b;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/autofill/b;-><init>(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
