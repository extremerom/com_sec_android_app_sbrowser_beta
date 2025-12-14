.class public final synthetic Lcom/sec/terrace/browser/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/terrace/browser/TinSwipeRefreshHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/terrace/browser/b;->a:I

    iput-object p1, p0, Lcom/sec/terrace/browser/b;->b:Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/terrace/browser/b;->a:I

    iget-object p0, p0, Lcom/sec/terrace/browser/b;->b:Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->d(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->c(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
