.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/l;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->F(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->adjustViewScales()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
