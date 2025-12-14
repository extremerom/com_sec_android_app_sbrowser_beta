.class public final synthetic Lcom/sec/terrace/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/a;->a:I

    iput-object p2, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/terrace/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lorg/chromium/ui/util/WindowInsetsUtils;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->a(Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/modaldialog/ModalDialogManager;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lorg/chromium/ui/modaldialog/ModalDialogManager;->b(Lorg/chromium/ui/modaldialog/ModalDialogManager;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/base/ClipboardImpl;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lorg/chromium/ui/base/ClipboardImpl;->a(Lorg/chromium/ui/base/ClipboardImpl;Landroid/net/Uri;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->b(Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;Ljava/lang/Integer;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;

    invoke-static {p0, p1}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->a(Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;I)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/device/nfc/NfcImpl;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lorg/chromium/device/nfc/NfcImpl;->setActivity(Landroid/app/Activity;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->q(Lorg/chromium/components/webauthn/Fido2CredentialRequest;I)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content_public/browser/NavigationHandle;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;->a(Lorg/chromium/content_public/browser/NavigationHandle;Ljava/lang/Boolean;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerBridge;

    invoke-virtual {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerBridge;->onDialogDismissed(I)V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lorg/chromium/base/Promise;->b(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content/browser/input/SelectPopup;

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/SelectPopup;->selectMenuItems([I)V

    return-void

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->onCompositorError(I)V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/Terrace$InnerTextCallback;

    check-cast p1, Ljava/util/Optional;

    invoke-static {p0, p1}, Lcom/sec/terrace/Terrace;->b(Lcom/sec/terrace/Terrace$InnerTextCallback;Ljava/util/Optional;)V

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/sec/terrace/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/Terrace;

    check-cast p1, Lorg/chromium/ui/base/ViewportInsets;

    invoke-static {p0, p1}, Lcom/sec/terrace/Terrace;->a(Lcom/sec/terrace/Terrace;Lorg/chromium/ui/base/ViewportInsets;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
