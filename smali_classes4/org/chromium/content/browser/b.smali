.class public final synthetic Lorg/chromium/content/browser/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/content/browser/BrowserStartupControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/content/browser/b;->a:I

    iput-object p1, p0, Lorg/chromium/content/browser/b;->b:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/b;->a:I

    iget-object p0, p0, Lorg/chromium/content/browser/b;->b:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->b(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
