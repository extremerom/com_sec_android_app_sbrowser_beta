.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->b:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->c:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->b:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->c:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->b:I

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->b(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;II)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->b:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->c:I

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->d(IILandroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->b:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;->c:I

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->c(Landroid/view/ViewGroup;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
