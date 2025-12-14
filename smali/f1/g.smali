.class public final synthetic Lf1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerJobService$Clock;
.implements Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$DateTime;
.implements Lorg/chromium/content_public/browser/WebContents$UserDataFactory;
.implements LR5/d;
.implements Lcom/google/firebase/components/d;
.implements Lt0/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf1/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)D
    .locals 4

    iget p0, p0, Lf1/g;->a:I

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    neg-double v0, p1

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    const-wide v2, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_1

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    mul-double/2addr v2, v0

    const-wide v0, 0x3faab1232f514a03L    # 0.05213270142180095

    add-double/2addr v2, v0

    const-wide v0, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide v2, 0x3fb3d0722149b580L    # 0.07739938080495357

    mul-double/2addr v0, v2

    :goto_1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_2

    neg-double v0, p1

    goto :goto_2

    :cond_2
    move-wide v0, p1

    :goto_2
    const-wide v2, 0x3f69a5c61c57a063L    # 0.0031308049535603718

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_3

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3faab1232f514a03L    # 0.05213270142180095

    sub-double/2addr v0, v2

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    :goto_3
    div-double/2addr v0, v2

    goto :goto_4

    :cond_3
    const-wide v2, 0x3fb3d0722149b580L    # 0.07739938080495357

    goto :goto_3

    :goto_4
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo3/p;

    iget-object v4, v3, Lo3/p;->q:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf3/i;

    :goto_1
    move-object v12, v4

    goto :goto_2

    :cond_0
    sget-object v4, Lf3/i;->c:Lf3/i;

    goto :goto_1

    :goto_2
    new-instance v4, Lf3/F;

    iget-object v5, v3, Lo3/p;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    const-string v5, "fromString(id)"

    invoke-static {v8, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/util/HashSet;

    iget-object v5, v3, Lo3/p;->p:Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v5, "progress"

    invoke-static {v12, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v13, v3, Lo3/p;->e:J

    const-wide/16 v15, 0x0

    cmp-long v5, v13, v15

    if-eqz v5, :cond_1

    new-instance v7, Lf3/D;

    move-object/from16 p1, v2

    iget-wide v1, v3, Lo3/p;->f:J

    invoke-direct {v7, v13, v14, v1, v2}, Lf3/D;-><init>(JJ)V

    move-object v1, v7

    goto :goto_3

    :cond_1
    move-object/from16 p1, v2

    const/4 v1, 0x0

    :goto_3
    sget-object v2, Lf3/E;->ENQUEUED:Lf3/E;

    iget v11, v3, Lo3/p;->h:I

    iget-wide v6, v3, Lo3/p;->d:J

    iget-object v15, v3, Lo3/p;->b:Lf3/E;

    if-ne v15, v2, :cond_4

    sget-object v16, Lo3/q;->x:Lf1/g;

    const/16 v16, 0x1

    if-ne v15, v2, :cond_2

    if-lez v11, :cond_2

    move/from16 v2, v16

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    :goto_4
    if-eqz v5, :cond_3

    move/from16 v21, v16

    goto :goto_5

    :cond_3
    const/16 v21, 0x0

    :goto_5
    iget-object v15, v3, Lo3/p;->i:Lf3/a;

    move-wide/from16 v22, v13

    iget-wide v13, v3, Lo3/p;->j:J

    move-wide/from16 v16, v13

    iget-wide v13, v3, Lo3/p;->k:J

    move-wide/from16 v18, v13

    iget v5, v3, Lo3/p;->l:I

    move/from16 v20, v5

    iget-wide v13, v3, Lo3/p;->f:J

    move-wide/from16 v24, v13

    iget-wide v13, v3, Lo3/p;->n:J

    move-wide/from16 v28, v13

    move-wide/from16 v26, v22

    move v13, v2

    move v14, v11

    move-wide/from16 v22, v6

    invoke-static/range {v13 .. v29}, LAb/E;->b(ZILf3/a;JJIZJJJJ)J

    move-result-wide v13

    :goto_6
    move-wide/from16 v19, v13

    goto :goto_7

    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    goto :goto_6

    :goto_7
    iget-object v15, v3, Lo3/p;->g:Lf3/f;

    iget-object v2, v3, Lo3/p;->c:Lf3/i;

    iget v5, v3, Lo3/p;->o:I

    iget-object v9, v3, Lo3/p;->b:Lf3/E;

    iget v14, v3, Lo3/p;->m:I

    move-wide/from16 v16, v6

    move-object v7, v4

    move v3, v11

    move-object v11, v2

    move v13, v3

    move-object/from16 v18, v1

    move/from16 v21, v5

    invoke-direct/range {v7 .. v21}, Lf3/F;-><init>(Ljava/util/UUID;Lf3/E;Ljava/util/HashSet;Lf3/i;Lf3/i;IILf3/f;JLf3/D;JI)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto/16 :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_8

    :cond_6
    const/4 v1, 0x0

    :goto_8
    return-object v1
.end method

.method public c(LA7/c;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lf1/g;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->a(LA7/c;)LE4/e;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lcom/google/firebase/components/o;

    sget-object p0, Lr7/j;->INSTANCE:Lr7/j;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lcom/google/firebase/components/o;

    invoke-virtual {p0}, Lcom/google/firebase/components/o;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lcom/google/firebase/components/o;

    invoke-virtual {p0}, Lcom/google/firebase/components/o;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lcom/google/firebase/components/o;

    invoke-virtual {p0}, Lcom/google/firebase/components/o;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public create(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lf1/g;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lorg/chromium/content/browser/selection/SmartSelectionClient;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SmartSelectionClient;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/chromium/content/browser/input/TextSuggestionHost;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/TextSuggestionHost;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/chromium/content/browser/input/SelectPopup;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopup;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lf1/g;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData$Companion;->a()Lcom/sec/android/app/sbrowser/media/background_play_custom/BackgroundPlayCustomData;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->a()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->a()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->a()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->a()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->a()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/device/geolocation/LocationProviderGmsCore;->a(Ljava/lang/Exception;)V

    return-void
.end method
