.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/v;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/v;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/v;->c:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/v;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/v;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/v;->c:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/v;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/v;->c:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
