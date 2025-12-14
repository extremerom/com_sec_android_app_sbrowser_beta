.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;->a:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;->c:Ljava/lang/Object;

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->e(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;ILandroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;ILandroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
