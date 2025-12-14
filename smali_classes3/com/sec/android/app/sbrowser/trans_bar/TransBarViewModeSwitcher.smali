.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;

.field private mCollapseButton:Landroid/widget/LinearLayout;

.field private mCollapseImage:Landroid/widget/ImageView;

.field private mCollapseWidth:I

.field private mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

.field private mExpandButton:Landroid/widget/LinearLayout;

.field private mExpandImage:Landroid/widget/ImageView;

.field private mExpandWidth:I

.field private mIsTablet:Z

.field private mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

.field private mSupportSourceSpinner:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mIsTablet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mSupportSourceSpinner:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mIsTablet:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mSupportSourceSpinner:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseWidth:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandWidth:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->storeLastPos(I)V

    return-void
.end method

.method private onCollapseStartAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/ObjectAnimator;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07163f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    move-object v10, p1

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    invoke-direct {v1, v2, v5, v6, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v13, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$6;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;IFLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v13, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private storeLastPos(I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTransBarLastPosX(I)V

    return-void
.end method


# virtual methods
.method public getCollapseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getExpandButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSplitted()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isSplitMode()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onChangeWindowSize(Landroid/view/View;ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    :cond_0
    return-void
.end method

.method public onCollapse(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    const/4 v2, 0x2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    move-object/from16 v9, p3

    invoke-static {v9, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v6, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x96

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    move-object/from16 v12, p4

    invoke-static {v12, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v13, Landroid/view/animation/PathInterpolator;

    invoke-direct {v13, v6, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_1

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v13, Landroid/view/animation/PathInterpolator;

    invoke-direct {v13, v6, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    new-array v7, v2, [F

    fill-array-data v7, :array_3

    move-object/from16 v13, p6

    invoke-static {v13, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v14, Landroid/view/animation/PathInterpolator;

    invoke-direct {v14, v6, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v7, v2, [F

    fill-array-data v7, :array_4

    move-object/from16 v14, p7

    invoke-static {v14, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v6, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v7, v2, [F

    fill-array-data v7, :array_5

    invoke-static {v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v6, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v2, v2, [F

    fill-array-data v2, :array_6

    invoke-static {v1, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v6, v6, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v8, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$5;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$5;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)V

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->onCollapseStartAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/ObjectAnimator;)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onExpand(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    const/4 v2, 0x2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    move-object/from16 v9, p3

    invoke-static {v9, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v4, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x96

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->isSplitted()Z

    move-result v7

    if-nez v7, :cond_1

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    move-object/from16 v12, p4

    invoke-static {v12, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v13, Landroid/view/animation/PathInterpolator;

    invoke-direct {v13, v4, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v12, p4

    :goto_0
    if-eqz v5, :cond_2

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v13, Landroid/view/animation/PathInterpolator;

    invoke-direct {v13, v4, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    new-array v7, v2, [F

    fill-array-data v7, :array_3

    move-object/from16 v13, p6

    invoke-static {v13, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v14, Landroid/view/animation/PathInterpolator;

    invoke-direct {v14, v4, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v7, v2, [F

    fill-array-data v7, :array_4

    move-object/from16 v14, p7

    invoke-static {v14, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v4, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v7, v2, [F

    fill-array-data v7, :array_5

    invoke-static {v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v4, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array v2, v2, [F

    fill-array-data v2, :array_6

    invoke-static {v1, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v4, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$3;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$3;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;)V

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->onExpandStartAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;)V

    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onExpandStartAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07163f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    move-object v10, p1

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    invoke-direct {v1, v2, v5, v6, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v13, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$4;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;IFLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v13, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public sendEventLog(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendExpandEventLog(Z)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-void
.end method

.method public setupSwitcher(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;)V
    .locals 13

    move-object v9, p0

    move-object v10, p1

    const v0, 0x7f0b0dcf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0db9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0dba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandImage:Landroid/widget/ImageView;

    const v0, 0x7f0b0db8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1403fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v11, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandButton:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1403ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-boolean v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mSupportSourceSpinner:Z

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v11, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseButton:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher$2;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p9

    iput-object v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;

    move/from16 v0, p8

    iput-boolean v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mIsTablet:Z

    return-void
.end method

.method public updateIconTint(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mExpandImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->mCollapseImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
