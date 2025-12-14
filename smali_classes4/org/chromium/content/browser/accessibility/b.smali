.class public final synthetic Lorg/chromium/content/browser/accessibility/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/content/browser/accessibility/b;->a:I

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/b;->b:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/accessibility/b;->a:I

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/b;->b:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->b(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->d(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->f(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V

    return-void

    :pswitch_2
    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->c(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
