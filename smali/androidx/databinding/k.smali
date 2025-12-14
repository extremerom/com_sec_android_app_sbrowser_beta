.class public abstract Landroidx/databinding/k;
.super Landroidx/databinding/a;
.source "SourceFile"


# static fields
.field private static final BINDING_NUMBER_START:I = 0x8

.field private static final CREATE_LIST_LISTENER:Landroidx/databinding/c;

.field private static final CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/c;

.field private static final CREATE_MAP_LISTENER:Landroidx/databinding/c;

.field private static final CREATE_PROPERTY_LISTENER:Landroidx/databinding/c;

.field private static final REBIND_NOTIFIER:Landroidx/databinding/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/b;"
        }
    .end annotation
.end field

.field private static final ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

.field static SDK_INT:I

.field private static final USE_CHOREOGRAPHER:Z

.field private static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainingBinding:Landroidx/databinding/k;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mIsExecutingPendingBindings:Z

.field private mLifecycleOwner:Landroidx/lifecycle/J;

.field private mLocalFieldObservers:[Landroidx/databinding/l;

.field private mPendingRebind:Z

.field private mRebindHalted:Z

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mRoot:Landroid/view/View;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/k;->SDK_INT:I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/databinding/k;->USE_CHOREOGRAPHER:Z

    new-instance v0, LE5/v;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, Landroidx/databinding/k;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/c;

    new-instance v0, LF6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/databinding/k;->CREATE_LIST_LISTENER:Landroidx/databinding/c;

    new-instance v0, LO7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/databinding/k;->CREATE_MAP_LISTENER:Landroidx/databinding/c;

    new-instance v0, LR7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/databinding/k;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/c;

    new-instance v0, Landroidx/databinding/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/databinding/k;->REBIND_NOTIFIER:Landroidx/databinding/b;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/k;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroidx/databinding/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/h;-><init>(I)V

    sput-object v0, Landroidx/databinding/k;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LH6/p;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, LH6/p;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/databinding/k;->mRebindRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/databinding/k;->mPendingRebind:Z

    iput-boolean p1, p0, Landroidx/databinding/k;->mRebindHalted:Z

    new-array p1, p3, [Landroidx/databinding/l;

    iput-object p1, p0, Landroidx/databinding/k;->mLocalFieldObservers:[Landroidx/databinding/l;

    iput-object p2, p0, Landroidx/databinding/k;->mRoot:Landroid/view/View;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-boolean p1, Landroidx/databinding/k;->USE_CHOREOGRAPHER:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/k;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Landroidx/databinding/i;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Landroidx/databinding/i;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/databinding/k;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/databinding/k;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/k;->mUIThreadHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/j;Landroid/util/SparseIntArray;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p0 .. p0}, Landroidx/databinding/k;->getBinding(Landroid/view/View;)Landroidx/databinding/k;

    move-result-object v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x30

    const/4 v8, 0x1

    const-string v9, "layout"

    const/4 v10, -0x1

    if-eqz p4, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x5f

    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    if-lez v11, :cond_b

    add-int/2addr v11, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v11, :cond_2

    goto :goto_5

    :cond_2
    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_4

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v11, v12, :cond_5

    mul-int/lit8 v13, v13, 0xa

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sub-int/2addr v14, v5

    add-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    aget-object v4, v1, v13

    if-nez v4, :cond_6

    aput-object v0, v1, v13

    :cond_6
    if-nez v2, :cond_a

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_b

    const-string v11, "binding_"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    sget v11, Landroidx/databinding/k;->BINDING_NUMBER_START:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v11, v12, :cond_8

    mul-int/lit8 v13, v13, 0xa

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sub-int/2addr v14, v5

    add-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    aget-object v4, v1, v13

    if-nez v4, :cond_9

    aput-object v0, v1, v13

    :cond_9
    if-nez v2, :cond_a

    :goto_4
    move v13, v10

    :cond_a
    move v4, v8

    goto :goto_6

    :cond_b
    :goto_5
    move v13, v10

    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v4

    if-lez v4, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ltz v4, :cond_c

    aget-object v11, v1, v4

    if-nez v11, :cond_c

    aput-object v0, v1, v4

    :cond_c
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1b

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v11, v4, :cond_1b

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ltz v13, :cond_19

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_19

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v10, "_0"

    invoke-virtual {v15, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/16 v10, 0x2f

    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    if-lez v16, :cond_19

    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v6, v16, -0x2

    invoke-virtual {v15, v10, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v10, v2, Landroidx/databinding/j;->a:[[Ljava/lang/String;

    aget-object v10, v10, v13

    array-length v15, v10

    move v5, v12

    :goto_8
    if-ge v5, v15, :cond_e

    aget-object v7, v10, v5

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_9

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v5, -0x1

    :goto_9
    if-ltz v5, :cond_19

    add-int/lit8 v12, v5, 0x1

    iget-object v6, v2, Landroidx/databinding/j;->b:[[I

    aget-object v6, v6, v13

    aget v6, v6, v5

    iget-object v7, v2, Landroidx/databinding/j;->c:[[I

    aget-object v7, v7, v13

    aget v5, v7, v5

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v10, v7}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v17, v11, 0x1

    move/from16 p0, v4

    move/from16 v4, v17

    move-object/from16 v17, v9

    move v9, v11

    :goto_a
    if-ge v4, v8, :cond_16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move/from16 p4, v8

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :goto_b
    if-eqz v8, :cond_15

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    move/from16 v18, v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v19, v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_11

    goto :goto_e

    :cond_10
    const/16 v13, 0x30

    :cond_11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v10, :cond_12

    goto :goto_d

    :cond_12
    move v13, v10

    :goto_c
    if-ge v13, v12, :cond_14

    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-nez v20, :cond_13

    goto :goto_d

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_14
    move v9, v4

    goto :goto_d

    :cond_15
    move/from16 v18, v12

    move/from16 v19, v13

    :goto_d
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, p4

    move/from16 v12, v18

    move/from16 v13, v19

    goto :goto_a

    :cond_16
    move/from16 v18, v12

    move/from16 v19, v13

    :goto_e
    if-ne v9, v11, :cond_17

    sget-object v4, Landroidx/databinding/f;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v14, v5}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/k;

    move-result-object v4

    aput-object v4, v1, v6

    move/from16 v12, v18

    const/4 v8, 0x0

    :goto_f
    const/4 v10, 0x1

    goto :goto_11

    :cond_17
    sub-int/2addr v9, v11

    add-int/lit8 v4, v9, 0x1

    new-array v7, v4, [Landroid/view/View;

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v4, :cond_18

    add-int v8, v11, v10

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_18
    sget-object v4, Landroidx/databinding/f;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7, v5}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/k;

    move-result-object v4

    aput-object v4, v1, v6

    add-int/2addr v11, v9

    move/from16 v12, v18

    goto :goto_f

    :cond_19
    move/from16 p0, v4

    move-object/from16 v17, v9

    move/from16 v19, v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_11
    const/4 v4, 0x0

    if-nez v10, :cond_1a

    invoke-static {v14, v1, v2, v3, v4}, Landroidx/databinding/k;->a(Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/j;Landroid/util/SparseIntArray;Z)V

    :cond_1a
    const/4 v5, 0x1

    add-int/2addr v11, v5

    move/from16 v4, p0

    move v8, v5

    move-object/from16 v9, v17

    move/from16 v13, v19

    const/16 v5, 0x30

    const/4 v10, -0x1

    goto/16 :goto_7

    :cond_1b
    return-void
.end method

.method public static synthetic access$100(Landroidx/databinding/k;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/k;->mRebindRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$202(Landroidx/databinding/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/databinding/k;->mPendingRebind:Z

    return p1
.end method

.method public static access$300()V
    .locals 1

    :goto_0
    sget-object v0, Landroidx/databinding/k;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic access$400(Landroidx/databinding/k;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/k;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    sget-object v0, Landroidx/databinding/k;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method public static bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/k;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroidx/databinding/f;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/k;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static executeBindingsOn(Landroidx/databinding/k;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/databinding/k;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/k;->requestRebind()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/k;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/k;->mIsExecutingPendingBindings:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/databinding/k;->mRebindHalted:Z

    invoke-virtual {p0}, Landroidx/databinding/k;->executeBindings()V

    iput-boolean v0, p0, Landroidx/databinding/k;->mIsExecutingPendingBindings:Z

    :goto_0
    return-void
.end method

.method public static getBinding(Landroid/view/View;)Landroidx/databinding/k;
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x7f0b03c8

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/k;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/k;
    .locals 0
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/k;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-nez p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/k;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mapBindings(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 0

    new-array p0, p2, [Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p1, p0, p3, p4, p2}, Landroidx/databinding/k;->a(Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/j;Landroid/util/SparseIntArray;Z)V

    return-object p0
.end method


# virtual methods
.method public abstract executeBindings()V
.end method

.method public executePendingBindings()V
    .locals 1

    iget-object v0, p0, Landroidx/databinding/k;->mContainingBinding:Landroidx/databinding/k;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/databinding/k;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/k;->requestRebind()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/k;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/k;->mIsExecutingPendingBindings:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/databinding/k;->mRebindHalted:Z

    invoke-virtual {p0}, Landroidx/databinding/k;->executeBindings()V

    iput-boolean v0, p0, Landroidx/databinding/k;->mIsExecutingPendingBindings:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/databinding/k;->executePendingBindings()V

    :goto_0
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/databinding/k;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract invalidateAll()V
.end method

.method public requestRebind()V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/k;->mContainingBinding:Landroidx/databinding/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/databinding/k;->requestRebind()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/databinding/k;->mLifecycleOwner:Landroidx/lifecycle/J;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/L;

    iget-object v0, v0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v1, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/k;->mPendingRebind:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/k;->mPendingRebind:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroidx/databinding/k;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/databinding/k;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/databinding/k;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/databinding/k;->mUIThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/databinding/k;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setContainedBinding(Landroidx/databinding/k;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p0, p1, Landroidx/databinding/k;->mContainingBinding:Landroidx/databinding/k;

    :cond_0
    return-void
.end method

.method public setRootTag(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b03c8

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
