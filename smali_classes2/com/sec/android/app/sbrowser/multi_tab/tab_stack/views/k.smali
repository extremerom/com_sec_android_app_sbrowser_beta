.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$2;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$2;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/k;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/k;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/k;->c:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/k;->c:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/k;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/k;->b:Landroid/view/View;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$2;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$2;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    return-void
.end method
