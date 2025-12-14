.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/n;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/n;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/n;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/n;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->v(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->t(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->u(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->o(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->x(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
