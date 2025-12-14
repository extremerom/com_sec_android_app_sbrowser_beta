.class public Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;
.super Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;
.source "SourceFile"


# static fields
.field private static final sIncludes:Landroidx/databinding/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0ba2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0e58

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0abe

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0abd

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0abb

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0abf

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0ab9

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b08f7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0ab8

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0ab4

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0e6f

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0aba

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0e5e

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0e75

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b09d8

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b014d

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0aaf

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b096d

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0969

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b096c

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0965

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0e77

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0ada

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0ddf

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0856

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0e72

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;->sIncludes:Landroidx/databinding/j;

    sget-object v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x1c

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/k;->mapBindings(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 36

    move-object/from16 v15, p0

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    const/16 v0, 0x1a

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    const/16 v0, 0x16

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RadioButton;

    const/16 v0, 0x14

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RadioButton;

    const/16 v0, 0x15

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RadioButton;

    const/16 v0, 0x13

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/RadioGroup;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroidx/appcompat/widget/SwitchCompat;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/FrameLayout;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/RelativeLayout;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ScrollView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/View;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/View;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object/from16 v23, v0

    check-cast v23, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/View;

    const/16 v0, 0x18

    aget-object v0, p3, v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_0

    :cond_0
    move-object/from16 v26, v2

    :goto_0
    const/16 v0, 0x19

    aget-object v0, p3, v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_1

    :cond_1
    move-object/from16 v35, v2

    :goto_1
    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/widget/LinearLayout;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object/from16 v31, v0

    check-cast v31, Landroid/widget/FrameLayout;

    const/16 v0, 0x1b

    aget-object v0, p3, v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object/from16 v33, v0

    check-cast v33, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const/16 v0, 0x17

    aget-object v0, p3, v0

    move-object/from16 v34, v0

    check-cast v34, Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v35

    invoke-direct/range {v0 .. v34}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/SeslSeekBar;Landroid/view/View;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroidx/appcompat/widget/SwitchCompat;Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ScrollView;Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/Toolbar;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/ActionMenuView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;->mDirtyFlags:J

    iget-object v0, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->layoutRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetPreviewBlurBg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroidx/databinding/k;->setRootTag(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;->mDirtyFlags:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBindingLandImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/k;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
