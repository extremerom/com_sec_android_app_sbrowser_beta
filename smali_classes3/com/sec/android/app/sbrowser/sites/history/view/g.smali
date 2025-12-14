.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/g;->b:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/g;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/g;->b:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->d(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
