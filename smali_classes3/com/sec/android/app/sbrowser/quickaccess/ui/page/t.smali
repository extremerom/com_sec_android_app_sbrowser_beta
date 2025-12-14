.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/t;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/t;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/t;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/t;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->onMostVisitedCheckedListChanged(Ljava/util/HashSet;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->onQuickAccessCheckedListChanged(Ljava/util/HashSet;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->onMostVisitedItemsListChanged(Ljava/util/List;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->onQuickAccessItemsListChanged(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
