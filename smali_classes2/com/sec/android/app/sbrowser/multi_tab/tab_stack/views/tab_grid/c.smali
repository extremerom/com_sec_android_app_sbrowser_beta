.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/c;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/c;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/c;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/c;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->j(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
