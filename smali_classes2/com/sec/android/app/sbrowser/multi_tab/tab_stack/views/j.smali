.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
