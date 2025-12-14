.class public final synthetic Lorg/chromium/ui/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/ui/widget/ToastManager;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/ui/widget/ToastManager;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/ui/widget/a;->a:I

    iput-object p1, p0, Lorg/chromium/ui/widget/a;->b:Lorg/chromium/ui/widget/ToastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/widget/a;->a:I

    iget-object p0, p0, Lorg/chromium/ui/widget/a;->b:Lorg/chromium/ui/widget/ToastManager;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/chromium/ui/widget/ToastManager;->c(Lorg/chromium/ui/widget/ToastManager;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lorg/chromium/ui/widget/ToastManager;->a(Lorg/chromium/ui/widget/ToastManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
