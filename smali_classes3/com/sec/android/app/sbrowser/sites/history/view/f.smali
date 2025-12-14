.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/view/f;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/f;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/f;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
