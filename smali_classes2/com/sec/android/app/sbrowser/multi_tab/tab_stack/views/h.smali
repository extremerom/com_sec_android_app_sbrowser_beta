.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/h;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/h;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/h;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/h;->b:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
