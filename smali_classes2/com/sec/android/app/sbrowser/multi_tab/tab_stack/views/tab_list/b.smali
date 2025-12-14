.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$Callback;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/b;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMultiSpan()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/b;->a:Landroid/view/ViewGroup;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->C(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Z

    move-result p0

    return p0
.end method

.method public onLayoutCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/b;->a:Landroid/view/ViewGroup;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->J(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;)V

    return-void
.end method
