.class public final synthetic LB0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB0/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget p0, p0, LB0/r;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->a(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->c(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lv/l;

    check-cast p2, Lv/l;

    iget-object p0, p1, Lv/l;->a:LB/i;

    iget-object p0, p0, LB/i;->a:Ljava/lang/String;

    iget-object p1, p2, Lv/l;->a:LB/i;

    iget-object p1, p1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lu2/e;

    check-cast p2, Lu2/e;

    iget p0, p2, Lu2/e;->a:I

    iget v0, p1, Lu2/e;->a:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lu2/e;->c:Ljava/lang/String;

    iget-object v0, p1, Lu2/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p2, Lu2/e;->d:Ljava/lang/String;

    iget-object p1, p1, Lu2/e;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_3
    check-cast p1, Lu2/e;

    check-cast p2, Lu2/e;

    iget p0, p2, Lu2/e;->b:I

    iget v0, p1, Lu2/e;->b:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lu2/e;->c:Ljava/lang/String;

    iget-object v0, p2, Lu2/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lu2/e;->d:Ljava/lang/String;

    iget-object p1, p2, Lu2/e;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_1
    return p0

    :pswitch_4
    check-cast p1, Lt2/c;

    check-cast p2, Lt2/c;

    iget-wide p0, p1, Lt2/c;->b:J

    iget-wide v0, p2, Lt2/c;->b:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lt2/d;

    check-cast p2, Lt2/d;

    iget-object p0, p1, Lt2/d;->a:Lt2/e;

    iget p0, p0, Lt2/e;->b:I

    iget-object p1, p2, Lt2/d;->a:Lt2/e;

    iget p1, p1, Lt2/e;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lorg/chromium/ui/widget/Toast;

    check-cast p2, Lorg/chromium/ui/widget/Toast;

    invoke-static {p1, p2}, Lorg/chromium/ui/widget/ToastManager;->b(Lorg/chromium/ui/widget/Toast;Lorg/chromium/ui/widget/Toast;)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lg1/d;

    check-cast p2, Lg1/d;

    invoke-static {p1, p2}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoUtils;->a(Lg1/d;Lg1/d;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceStyleFragment;->k(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceStyleFragment;->j(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;

    check-cast p2, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->a(Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    check-cast p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    check-cast p2, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->f(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    check-cast p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    check-cast p2, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->b(Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_4

    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    move v0, p0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_6

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_5

    sub-int p0, v1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return p0

    :pswitch_12
    check-cast p1, La0/N;

    check-cast p2, La0/N;

    iget p0, p1, La0/N;->b:I

    iget p1, p2, La0/N;->b:I

    invoke-static {p0, p1}, Ltb/k;->h(II)I

    move-result p0

    return p0

    :pswitch_13
    check-cast p1, [B

    check-cast p2, [B

    const/4 p0, 0x0

    if-ne p1, p2, :cond_7

    goto :goto_5

    :cond_7
    if-nez p1, :cond_8

    const/4 p0, -0x1

    goto :goto_5

    :cond_8
    if-nez p2, :cond_9

    const/4 p0, 0x1

    goto :goto_5

    :cond_9
    move v0, p0

    :goto_4
    array-length v1, p1

    array-length v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_b

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_a

    sub-int p0, v1, v2

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_c

    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    :cond_c
    :goto_5
    return p0

    :pswitch_14
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, Landroidx/compose/ui/node/a;

    iget-object p0, p1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    iget p0, p0, LB0/F;->q:F

    iget-object v0, p2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->m:LB0/F;

    iget v0, v0, LB0/F;->q:F

    cmpg-float v1, p0, v0

    if-nez v1, :cond_d

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->k()I

    move-result p0

    invoke-virtual {p2}, Landroidx/compose/ui/node/a;->k()I

    move-result p1

    invoke-static {p0, p1}, Ltb/k;->h(II)I

    move-result p0

    goto :goto_6

    :cond_d
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    :goto_6
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
