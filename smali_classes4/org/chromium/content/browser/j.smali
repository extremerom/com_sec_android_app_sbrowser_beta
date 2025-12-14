.class public final synthetic Lorg/chromium/content/browser/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/content/browser/TtsPlatformImpl;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lorg/chromium/content/browser/j;->a:I

    iput-object p1, p0, Lorg/chromium/content/browser/j;->b:Lorg/chromium/content/browser/TtsPlatformImpl;

    iput-object p2, p0, Lorg/chromium/content/browser/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/chromium/content/browser/j;->b:Lorg/chromium/content/browser/TtsPlatformImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/j;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/chromium/content/browser/TtsPlatformImpl;->a(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/j;->b:Lorg/chromium/content/browser/TtsPlatformImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/j;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/chromium/content/browser/TtsPlatformImpl;->c(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/j;->b:Lorg/chromium/content/browser/TtsPlatformImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/j;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/chromium/content/browser/TtsPlatformImpl;->b(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
