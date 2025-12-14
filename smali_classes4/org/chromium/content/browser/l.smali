.class public final synthetic Lorg/chromium/content/browser/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/l;->a:I

    iput-object p2, p0, Lorg/chromium/content/browser/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/l;->a:I

    iget-object p0, p0, Lorg/chromium/content/browser/l;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/chromium/content/browser/ChildProcessRanking;

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessRanking;->g(Lorg/chromium/content/browser/ChildProcessRanking;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->i(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V

    return-void

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->d(Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->b(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
