.class public Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "_"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URI;

    const-string v3, "\\["

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "\\]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "\\\\"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "[*<>%{}#|^`?]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "www."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SmartTabDeleteUtils"

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getInputParameters(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)[D
    .locals 56

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromExternalApp()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromLink()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodTwoCount()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getRefreshCount()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodThreeCount()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabCreationHour()I

    move-result v10

    int-to-double v10, v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeImage()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeAudio()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v16, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeApplication()I

    move-result v14

    int-to-double v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTime()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    if-nez v18, :cond_0

    move-wide/from16 v18, v14

    move-wide/from16 v14, v22

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTime()J

    move-result-wide v14

    long-to-double v14, v14

    :goto_0
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodThreeTime()J

    move-result-wide v24

    cmp-long v24, v24, v20

    if-nez v24, :cond_1

    move-wide/from16 v24, v14

    move-wide/from16 v14, v22

    goto :goto_1

    :cond_1
    move-wide/from16 v24, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodThreeTime()J

    move-result-wide v14

    long-to-double v14, v14

    :goto_1
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodOneTime()J

    move-result-wide v26

    cmp-long v26, v26, v20

    if-nez v26, :cond_2

    move-wide/from16 v26, v14

    move-wide/from16 v14, v22

    goto :goto_2

    :cond_2
    move-wide/from16 v26, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodOneTime()J

    move-result-wide v14

    long-to-double v14, v14

    :goto_2
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTimePerDay()F

    move-result v28

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_3

    move-wide/from16 v28, v14

    move-wide/from16 v14, v22

    goto :goto_3

    :cond_3
    move-wide/from16 v28, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTimePerDay()F

    move-result v14

    float-to-double v14, v14

    :goto_3
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodTwoTime()J

    move-result-wide v30

    cmp-long v20, v30, v20

    if-nez v20, :cond_4

    move-wide/from16 v20, v14

    goto :goto_4

    :cond_4
    move-wide/from16 v20, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodTwoTime()J

    move-result-wide v14

    long-to-double v14, v14

    move-wide/from16 v22, v14

    :goto_4
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    move-wide/from16 v22, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromRestoreBackground()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v30, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeTextHtml()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v32, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeCount()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v34, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodOneCount()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v36, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromRestoreForeground()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v38, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromUI()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v40, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromLongpressForeground()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v42, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromLongpressBackground()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v44, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromReaderMode()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v46, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromAssist()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v48, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeVideo()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v50, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeText()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v52, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeOthers()I

    move-result v14

    int-to-double v14, v14

    move-wide/from16 v54, v14

    const/16 v14, 0x1b

    new-array v14, v14, [D

    const/4 v15, 0x0

    aput-wide v0, v14, v15

    const/4 v0, 0x1

    aput-wide v2, v14, v0

    const/4 v0, 0x2

    aput-wide v4, v14, v0

    const/4 v0, 0x3

    aput-wide v6, v14, v0

    const/4 v0, 0x4

    aput-wide v8, v14, v0

    const/4 v0, 0x5

    aput-wide v10, v14, v0

    const/4 v0, 0x6

    aput-wide v12, v14, v0

    const/4 v0, 0x7

    aput-wide v16, v14, v0

    const/16 v0, 0x8

    aput-wide v18, v14, v0

    const/16 v0, 0x9

    aput-wide v24, v14, v0

    const/16 v0, 0xa

    aput-wide v26, v14, v0

    const/16 v0, 0xb

    aput-wide v28, v14, v0

    const/16 v0, 0xc

    aput-wide v20, v14, v0

    const/16 v0, 0xd

    aput-wide v22, v14, v0

    const/16 v0, 0xe

    aput-wide v30, v14, v0

    const/16 v0, 0xf

    aput-wide v32, v14, v0

    const/16 v0, 0x10

    aput-wide v34, v14, v0

    const/16 v0, 0x11

    aput-wide v36, v14, v0

    const/16 v0, 0x12

    aput-wide v38, v14, v0

    const/16 v0, 0x13

    aput-wide v40, v14, v0

    const/16 v0, 0x14

    aput-wide v42, v14, v0

    const/16 v0, 0x15

    aput-wide v44, v14, v0

    const/16 v0, 0x16

    aput-wide v46, v14, v0

    const/16 v0, 0x17

    aput-wide v48, v14, v0

    const/16 v0, 0x18

    aput-wide v50, v14, v0

    const/16 v0, 0x19

    aput-wide v52, v14, v0

    const/16 v0, 0x1a

    aput-wide v54, v14, v0

    return-object v14
.end method

.method public static getInputParametersWithLabel(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)[F
    .locals 30

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromExternalApp()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromLink()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodTwoCount()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getRefreshCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodThreeCount()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabCreationHour()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeImage()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeAudio()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeApplication()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTime()J

    move-result-wide v9

    long-to-double v9, v9

    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodThreeTime()J

    move-result-wide v15

    cmp-long v10, v15, v11

    if-nez v10, :cond_1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodThreeTime()J

    move-result-wide v13

    long-to-double v13, v13

    :goto_1
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    double-to-float v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodOneTime()J

    move-result-wide v13

    cmp-long v13, v13, v11

    if-nez v13, :cond_2

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodOneTime()J

    move-result-wide v13

    long-to-double v13, v13

    :goto_2
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTimePerDay()F

    move-result v14

    const/16 v17, 0x0

    cmpl-float v14, v14, v17

    if-nez v14, :cond_3

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTimePerDay()F

    move-result v14

    float-to-double v11, v14

    :goto_3
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodTwoTime()J

    move-result-wide v20

    const-wide/16 v18, 0x0

    cmp-long v12, v20, v18

    if-nez v12, :cond_4

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodTwoTime()J

    move-result-wide v14

    long-to-double v14, v14

    move-wide v15, v14

    :goto_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    double-to-float v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromRestoreBackground()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeTextHtml()I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeCount()I

    move-result v15

    int-to-float v15, v15

    move/from16 v18, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodOneCount()I

    move-result v15

    int-to-float v15, v15

    move/from16 v19, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromRestoreForeground()I

    move-result v15

    int-to-float v15, v15

    move/from16 v20, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromUI()I

    move-result v15

    int-to-float v15, v15

    move/from16 v21, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromLongpressForeground()I

    move-result v15

    int-to-float v15, v15

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromLongpressBackground()I

    move-result v15

    int-to-float v15, v15

    move/from16 v23, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromReaderMode()I

    move-result v15

    int-to-float v15, v15

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsLaunchedFromAssist()I

    move-result v15

    int-to-float v15, v15

    move/from16 v25, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeVideo()I

    move-result v15

    int-to-float v15, v15

    move/from16 v26, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeText()I

    move-result v15

    int-to-float v15, v15

    move/from16 v27, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsPageTypeOthers()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getIsClosed()I

    move-result v28

    if-nez v28, :cond_5

    :goto_5
    move/from16 v28, v15

    goto :goto_6

    :cond_5
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_5

    :goto_6
    const/16 v15, 0x1c

    new-array v15, v15, [F

    const/16 v29, 0x0

    aput v0, v15, v29

    const/4 v0, 0x1

    aput v1, v15, v0

    const/4 v0, 0x2

    aput v2, v15, v0

    const/4 v0, 0x3

    aput v3, v15, v0

    const/4 v0, 0x4

    aput v4, v15, v0

    const/4 v0, 0x5

    aput v5, v15, v0

    const/4 v0, 0x6

    aput v6, v15, v0

    const/4 v0, 0x7

    aput v7, v15, v0

    const/16 v0, 0x8

    aput v8, v15, v0

    const/16 v0, 0x9

    aput v9, v15, v0

    const/16 v0, 0xa

    aput v10, v15, v0

    const/16 v0, 0xb

    aput v13, v15, v0

    const/16 v0, 0xc

    aput v11, v15, v0

    const/16 v0, 0xd

    aput v12, v15, v0

    const/16 v0, 0xe

    aput v14, v15, v0

    const/16 v0, 0xf

    aput v16, v15, v0

    const/16 v0, 0x10

    aput v18, v15, v0

    const/16 v0, 0x11

    aput v19, v15, v0

    const/16 v0, 0x12

    aput v20, v15, v0

    const/16 v0, 0x13

    aput v21, v15, v0

    const/16 v0, 0x14

    aput v22, v15, v0

    const/16 v0, 0x15

    aput v23, v15, v0

    const/16 v0, 0x16

    aput v24, v15, v0

    const/16 v0, 0x17

    aput v25, v15, v0

    const/16 v0, 0x18

    aput v26, v15, v0

    const/16 v0, 0x19

    aput v27, v15, v0

    const/16 v0, 0x1a

    aput v28, v15, v0

    const/16 v0, 0x1b

    aput v17, v15, v0

    return-object v15
.end method

.method public static getPrimaryKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStartOfDayInMillis()J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStartOfSecondPeriodInMillis()J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStartOfThirdPeriodInMillis()J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isInternalUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "internet-native://newtab/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "internet://debug/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "chrome-native://newtab/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "internet-native://parental-control/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "quickaccess.internet.apps.samsung.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static normalize([[D)[[D
    .locals 59

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    array-length v3, v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v3, v5, v6

    aput v1, v5, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v3, v2

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    :goto_0
    array-length v2, v0

    const/16 v28, 0x10

    const/16 v29, 0x9

    const/16 v30, 0xc

    const/16 v31, 0x3

    const/16 v32, 0x4

    const/16 v33, 0x11

    const/16 v34, 0xa

    const/16 v35, 0xd

    const/16 v36, 0xb

    if-ge v3, v2, :cond_0

    aget-object v2, v0, v3

    aget-wide v36, v2, v36

    add-double v7, v7, v36

    aget-wide v35, v2, v35

    add-double v9, v9, v35

    aget-wide v34, v2, v34

    add-double v11, v11, v34

    aget-wide v33, v2, v33

    add-double v13, v13, v33

    aget-wide v33, v2, v4

    add-double v15, v15, v33

    aget-wide v32, v2, v32

    add-double v17, v17, v32

    aget-wide v31, v2, v31

    add-double v19, v19, v31

    aget-wide v30, v2, v30

    add-double v21, v21, v30

    aget-wide v29, v2, v29

    add-double v23, v23, v29

    aget-wide v28, v2, v28

    add-double v25, v25, v28

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v0

    int-to-double v2, v2

    div-double/2addr v7, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double/2addr v9, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double/2addr v11, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double/2addr v13, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double/2addr v15, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double v17, v17, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double v19, v19, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double v21, v21, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double v23, v23, v2

    array-length v2, v0

    int-to-double v2, v2

    div-double v25, v25, v2

    const/4 v2, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    aget-wide v57, v3, v36

    sub-double v5, v57, v7

    move-wide/from16 v57, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v37, v5, v37

    aget-object v3, v0, v2

    aget-wide v5, v3, v35

    sub-double/2addr v5, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v39, v5, v39

    aget-object v3, v0, v2

    aget-wide v5, v3, v34

    sub-double/2addr v5, v11

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v41, v5, v41

    aget-object v3, v0, v2

    aget-wide v5, v3, v33

    sub-double/2addr v5, v13

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v43, v5, v43

    aget-object v3, v0, v2

    aget-wide v5, v3, v4

    sub-double/2addr v5, v15

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v45, v5, v45

    aget-object v3, v0, v2

    aget-wide v5, v3, v32

    sub-double v5, v5, v17

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v47, v5, v47

    aget-object v3, v0, v2

    aget-wide v5, v3, v31

    sub-double v5, v5, v19

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v49, v5, v49

    aget-object v3, v0, v2

    aget-wide v5, v3, v30

    sub-double v5, v5, v21

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v51, v5, v51

    aget-object v3, v0, v2

    aget-wide v5, v3, v29

    sub-double v5, v5, v23

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v53, v5, v53

    aget-object v3, v0, v2

    aget-wide v5, v3, v28

    sub-double v5, v5, v25

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v55, v5, v55

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v7, v57

    goto :goto_1

    :cond_1
    move-wide/from16 v57, v7

    array-length v2, v0

    int-to-double v2, v2

    div-double v37, v37, v2

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    array-length v5, v0

    int-to-double v5, v5

    div-double v39, v39, v5

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    array-length v7, v0

    int-to-double v7, v7

    div-double v41, v41, v7

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    array-length v4, v0

    move-wide/from16 v38, v13

    int-to-double v13, v4

    div-double v43, v43, v13

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    array-length v4, v0

    move-wide/from16 v40, v13

    int-to-double v13, v4

    div-double v45, v45, v13

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    array-length v4, v0

    move-wide/from16 v42, v13

    int-to-double v13, v4

    div-double v47, v47, v13

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    array-length v4, v0

    move-wide/from16 v44, v13

    int-to-double v13, v4

    div-double v49, v49, v13

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    array-length v4, v0

    move-wide/from16 v46, v13

    int-to-double v13, v4

    div-double v51, v51, v13

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    array-length v4, v0

    move-wide/from16 v48, v13

    int-to-double v13, v4

    div-double v53, v53, v13

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    array-length v4, v0

    move-wide/from16 v50, v13

    int-to-double v13, v4

    div-double v55, v55, v13

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    move-wide/from16 v52, v13

    const/4 v4, 0x0

    :goto_2
    array-length v13, v0

    if-ge v4, v13, :cond_c

    const-wide/16 v13, 0x0

    cmpl-double v27, v2, v13

    if-eqz v27, :cond_2

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v36

    sub-double v54, v54, v57

    div-double v54, v54, v2

    aput-wide v54, v27, v36

    :cond_2
    cmpl-double v27, v5, v13

    if-eqz v27, :cond_3

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v35

    sub-double v54, v54, v9

    div-double v54, v54, v5

    aput-wide v54, v27, v35

    :cond_3
    cmpl-double v27, v7, v13

    if-eqz v27, :cond_4

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v34

    sub-double v54, v54, v11

    div-double v54, v54, v7

    aput-wide v54, v27, v34

    :cond_4
    cmpl-double v27, v40, v13

    if-eqz v27, :cond_5

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v33

    sub-double v54, v54, v38

    div-double v54, v54, v40

    aput-wide v54, v27, v33

    :cond_5
    cmpl-double v27, v42, v13

    if-eqz v27, :cond_6

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    const/16 v37, 0x2

    aget-wide v54, v54, v37

    sub-double v54, v54, v15

    div-double v54, v54, v42

    aput-wide v54, v27, v37

    goto :goto_3

    :cond_6
    const/16 v37, 0x2

    :goto_3
    cmpl-double v27, v44, v13

    if-eqz v27, :cond_7

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v32

    sub-double v54, v54, v17

    div-double v54, v54, v44

    aput-wide v54, v27, v32

    :cond_7
    cmpl-double v27, v46, v13

    if-eqz v27, :cond_8

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v31

    sub-double v54, v54, v19

    div-double v54, v54, v46

    aput-wide v54, v27, v31

    :cond_8
    cmpl-double v27, v48, v13

    if-eqz v27, :cond_9

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v30

    sub-double v54, v54, v21

    div-double v54, v54, v48

    aput-wide v54, v27, v30

    :cond_9
    cmpl-double v27, v50, v13

    if-eqz v27, :cond_a

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v29

    sub-double v54, v54, v23

    div-double v54, v54, v50

    aput-wide v54, v27, v29

    :cond_a
    cmpl-double v27, v52, v13

    if-eqz v27, :cond_b

    aget-object v27, v1, v4

    aget-object v54, v0, v4

    aget-wide v54, v54, v28

    sub-double v54, v54, v25

    div-double v54, v54, v52

    aput-wide v54, v27, v28

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_c
    return-object v1
.end method
