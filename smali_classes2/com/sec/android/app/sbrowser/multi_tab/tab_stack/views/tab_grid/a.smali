.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->i(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter$ViewHolder;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
