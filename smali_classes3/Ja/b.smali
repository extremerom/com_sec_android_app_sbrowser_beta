.class public final LJa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LJa/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget p0, p0, LJa/b;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lc1/j;

    invoke-direct {p0, p1}, Lc1/j;-><init>(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, LH4/r;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LH4/r;-><init>(Ljava/lang/Runnable;I)V

    const-string p1, "glide-active-resources"

    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
