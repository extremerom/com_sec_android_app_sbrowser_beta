.class public final synthetic LA2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LA2/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget p0, p0, LA2/f;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lorg/chromium/ui/base/WindowAndroid;->b(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lorg/chromium/base/task/AsyncTask;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    invoke-static {p1}, Lcom/sec/terrace/TerraceHelper;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    invoke-static {}, LF/a;->m()LF/a;

    move-result-object p0

    iget-object p0, p0, LF/a;->a:LF/c;

    iget-object p0, p0, LF/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
