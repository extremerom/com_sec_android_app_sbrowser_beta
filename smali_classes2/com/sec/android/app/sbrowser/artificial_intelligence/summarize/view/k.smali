.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/handle/Handle;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/handle/draw/HandleDrawInfo;

    invoke-static {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/handle/Handle;->b(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/handle/Handle;Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/handle/draw/HandleDrawInfo;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->m(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/KeyEvent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->I(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->b:Ljava/lang/Object;

    check-cast v0, LB9/b;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->a(LB9/b;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;->c:Ljava/lang/Object;

    check-cast p0, Ltb/s;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->e(Lcom/sec/android/app/sbrowser/databinding/AiSummarizeFtuDialogViewBinding;Ltb/s;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
