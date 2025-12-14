.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Landroid/widget/CheckBox;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->d:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/ui/listmenu/ListMenuItemAdapter;ILandroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->b:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->d:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->c:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/ui/listmenu/ListMenuItemAdapter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->b:I

    invoke-static {v1, p0, v0, p1}, Lorg/chromium/ui/listmenu/ListMenuItemAdapter;->a(Lorg/chromium/ui/listmenu/ListMenuItemAdapter;ILandroid/view/ViewGroup;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->b:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Landroid/widget/CheckBox;ILandroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
