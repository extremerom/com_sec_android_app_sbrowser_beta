.class public final synthetic Lorg/chromium/content/browser/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/e;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->f()V

    return-void

    :pswitch_0
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->c()V

    return-void

    :pswitch_1
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a()V

    return-void

    :pswitch_2
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->g()V

    return-void

    :pswitch_3
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
