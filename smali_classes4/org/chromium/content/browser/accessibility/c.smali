.class public final synthetic Lorg/chromium/content/browser/accessibility/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

.field public final synthetic c:Landroid/view/ViewStructure;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Landroid/view/ViewStructure;I)V
    .locals 0

    iput p3, p0, Lorg/chromium/content/browser/accessibility/c;->a:I

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/c;->b:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    iput-object p2, p0, Lorg/chromium/content/browser/accessibility/c;->c:Landroid/view/ViewStructure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/accessibility/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/c;->c:Landroid/view/ViewStructure;

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/c;->b:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Landroid/view/ViewStructure;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/c;->c:Landroid/view/ViewStructure;

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/c;->b:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0, v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->e(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Landroid/view/ViewStructure;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
