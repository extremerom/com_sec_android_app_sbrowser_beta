.class public final synthetic Lsa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;I)V
    .locals 0

    iput p3, p0, Lsa/b;->a:I

    iput-object p1, p0, Lsa/b;->b:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    iput-object p2, p0, Lsa/b;->c:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lsa/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lsa/b;->c:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    iget-object p0, p0, Lsa/b;->b:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->c(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lsa/b;->c:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    iget-object p0, p0, Lsa/b;->b:Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->f(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
