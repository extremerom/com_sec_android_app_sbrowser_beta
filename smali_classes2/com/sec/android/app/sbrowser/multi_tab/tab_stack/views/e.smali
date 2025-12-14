.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/e;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/e;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
