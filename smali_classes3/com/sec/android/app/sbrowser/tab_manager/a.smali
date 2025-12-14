.class public final synthetic Lcom/sec/android/app/sbrowser/tab_manager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/c;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/textselection/TextSelectionHelper;->a(Lcom/sec/android/app/sbrowser/si_log/ui/c;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/a;->b:Ljava/lang/Object;

    check-cast p0, [Lsb/k;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3, p2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v4, v3}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :pswitch_1
    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    check-cast p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->a(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
