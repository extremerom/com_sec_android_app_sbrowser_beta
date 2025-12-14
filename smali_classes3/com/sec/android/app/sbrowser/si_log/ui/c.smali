.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/c;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/data/SelectableLine;

    check-cast p2, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/data/SelectableLine;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Point;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/textselection/TextSelectionHelper;->b(Landroid/graphics/Point;Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/data/SelectableLine;Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/data/SelectableLine;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->i(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Landroid/view/View;Landroid/view/View;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
