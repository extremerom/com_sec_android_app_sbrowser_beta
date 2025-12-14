.class public abstract LY2/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

.field private static final STRAIGHT_PATH_MOTION:LY2/M;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LN/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatorCache:[Landroid/animation/Animator;

.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCloneParent:LY2/f0;

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:LY2/r0;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LY2/q0;",
            ">;"
        }
    .end annotation
.end field

.field mEnded:Z

.field private mEpicenterCallback:LY2/Z;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LY2/d0;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersCache:[LY2/d0;

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:LN/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN/f;"
        }
    .end annotation
.end field

.field mNumInstances:I

.field mParent:LY2/n0;

.field private mPathMotion:LY2/M;

.field private mPaused:Z

.field mPropagation:LY2/k0;

.field mSeekController:LY2/c0;

.field mSeekOffsetInParent:J

.field private mStartDelay:J

.field private mStartValues:LY2/r0;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LY2/q0;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/Animator;

    sput-object v0, LY2/f0;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, LY2/f0;->DEFAULT_MATCH_ORDER:[I

    new-instance v0, LY2/W;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LY2/f0;->STRAIGHT_PATH_MOTION:LY2/M;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LY2/f0;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LY2/f0;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LY2/f0;->mStartDelay:J

    iput-wide v0, p0, LY2/f0;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, LY2/f0;->mInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    new-instance v1, LY2/r0;

    invoke-direct {v1}, LY2/r0;-><init>()V

    iput-object v1, p0, LY2/f0;->mStartValues:LY2/r0;

    new-instance v1, LY2/r0;

    invoke-direct {v1}, LY2/r0;-><init>()V

    iput-object v1, p0, LY2/f0;->mEndValues:LY2/r0;

    iput-object v0, p0, LY2/f0;->mParent:LY2/n0;

    sget-object v1, LY2/f0;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, LY2/f0;->mMatchOrder:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, LY2/f0;->mCanRemoveViews:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    sget-object v2, LY2/f0;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v2, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    iput v1, p0, LY2/f0;->mNumInstances:I

    iput-boolean v1, p0, LY2/f0;->mPaused:Z

    iput-boolean v1, p0, LY2/f0;->mEnded:Z

    iput-object v0, p0, LY2/f0;->mCloneParent:LY2/f0;

    iput-object v0, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    sget-object v0, LY2/f0;->STRAIGHT_PATH_MOTION:LY2/M;

    iput-object v0, p0, LY2/f0;->mPathMotion:LY2/M;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LY2/f0;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LY2/f0;->mStartDelay:J

    iput-wide v0, p0, LY2/f0;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, LY2/f0;->mInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, LY2/f0;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    new-instance v1, LY2/r0;

    invoke-direct {v1}, LY2/r0;-><init>()V

    iput-object v1, p0, LY2/f0;->mStartValues:LY2/r0;

    new-instance v1, LY2/r0;

    invoke-direct {v1}, LY2/r0;-><init>()V

    iput-object v1, p0, LY2/f0;->mEndValues:LY2/r0;

    iput-object v0, p0, LY2/f0;->mParent:LY2/n0;

    sget-object v1, LY2/f0;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, LY2/f0;->mMatchOrder:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, LY2/f0;->mCanRemoveViews:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    sget-object v2, LY2/f0;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v2, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    iput v1, p0, LY2/f0;->mNumInstances:I

    iput-boolean v1, p0, LY2/f0;->mPaused:Z

    iput-boolean v1, p0, LY2/f0;->mEnded:Z

    iput-object v0, p0, LY2/f0;->mCloneParent:LY2/f0;

    iput-object v0, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    sget-object v0, LY2/f0;->STRAIGHT_PATH_MOTION:LY2/M;

    iput-object v0, p0, LY2/f0;->mPathMotion:LY2/M;

    sget-object v0, LY2/V;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v2, "duration"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v0, p2, v2, v3, v4}, LW0/b;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v5, v2

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-ltz v2, :cond_0

    invoke-virtual {p0, v5, v6}, LY2/f0;->setDuration(J)LY2/f0;

    :cond_0
    const-string v2, "startDelay"

    invoke-static {p2, v2}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    :goto_0
    int-to-long v9, v4

    cmp-long v2, v9, v7

    if-lez v2, :cond_2

    invoke-virtual {p0, v9, v10}, LY2/f0;->setStartDelay(J)LY2/f0;

    :cond_2
    const-string v2, "interpolator"

    invoke-static {p2, v2}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :goto_1
    if-lez v2, :cond_4

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    :cond_4
    const-string p1, "matchOrder"

    const/4 v2, 0x3

    invoke-static {v0, p2, p1, v2}, LW0/b;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance p2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {p2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p1, p1, [I

    move v4, v1

    :goto_2
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    aput v2, p1, v4

    goto :goto_3

    :cond_5
    const-string v7, "instance"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    aput v3, p1, v4

    goto :goto_3

    :cond_6
    const-string v7, "name"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    aput v5, p1, v4

    goto :goto_3

    :cond_7
    const-string v7, "itemId"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v6, 0x4

    aput v6, p1, v4

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    array-length v6, p1

    sub-int/2addr v6, v3

    new-array v6, v6, [I

    invoke-static {p1, v1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, -0x1

    move-object p1, v6

    :goto_3
    add-int/2addr v4, v3

    goto :goto_2

    :cond_9
    new-instance p0, Landroid/view/InflateException;

    const-string p1, "Unknown match type in matchOrder: \'"

    const-string p2, "\'"

    invoke-static {p1, v6, p2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0, p1}, LY2/f0;->setMatchOrder([I)V

    :cond_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static a(LY2/r0;Landroid/view/View;LY2/q0;)V
    .locals 3

    iget-object v0, p0, LY2/r0;->a:LN/f;

    invoke-virtual {v0, p1, p2}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    iget-object v1, p0, LY2/r0;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/O;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v1, p0, LY2/r0;->d:LN/f;

    invoke-virtual {v1, p2}, LN/A;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2, v0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2, p1}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object p0, p0, LY2/r0;->c:LN/k;

    invoke-virtual {p0, v1, v2}, LN/k;->c(J)I

    move-result p2

    if-ltz p2, :cond_4

    invoke-virtual {p0, v1, v2}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, v0}, LN/k;->e(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, p1}, LN/k;->e(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic access$000(LY2/f0;)LY2/f0;
    .locals 0

    iget-object p0, p0, LY2/f0;->mCloneParent:LY2/f0;

    return-object p0
.end method

.method public static synthetic access$002(LY2/f0;LY2/f0;)LY2/f0;
    .locals 0

    iput-object p1, p0, LY2/f0;->mCloneParent:LY2/f0;

    return-object p1
.end method

.method public static c()LN/f;
    .locals 2

    sget-object v0, LY2/f0;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN/f;

    if-nez v0, :cond_0

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    sget-object v1, LY2/f0;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static d(LY2/q0;LY2/q0;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, p2

    :goto_1
    return p0
.end method


# virtual methods
.method public addListener(LY2/d0;)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(I)LY2/f0;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, LY2/f0;->end()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LY2/f0;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, LY2/f0;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    invoke-virtual {p0}, LY2/f0;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, LY2/f0;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {p0}, LY2/f0;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LY2/f0;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v0, LK6/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LK6/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, LY2/f0;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, LY2/f0;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, LY2/f0;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, LY2/f0;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    new-instance v1, LY2/q0;

    invoke-direct {v1, p1}, LY2/q0;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_5

    invoke-virtual {p0, v1}, LY2/f0;->captureStartValues(LY2/q0;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, LY2/f0;->captureEndValues(LY2/q0;)V

    :goto_1
    iget-object v3, v1, LY2/q0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, LY2/f0;->capturePropagationValues(LY2/q0;)V

    if-eqz p2, :cond_6

    iget-object v3, p0, LY2/f0;->mStartValues:LY2/r0;

    invoke-static {v3, p1, v1}, LY2/f0;->a(LY2/r0;Landroid/view/View;LY2/q0;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, LY2/f0;->mEndValues:LY2/r0;

    invoke-static {v3, p1, v1}, LY2/f0;->a(LY2/r0;Landroid/view/View;LY2/q0;)V

    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    iget-object v1, p0, LY2/f0;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, LY2/f0;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, LY2/f0;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_b

    iget-object v3, p0, LY2/f0;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, LY2/f0;->b(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    iget-object v2, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Animator;

    sget-object v2, LY2/f0;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v2, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    sget-object v0, LY2/e0;->Q:LA9/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    return-void
.end method

.method public abstract captureEndValues(LY2/q0;)V
.end method

.method public capturePropagationValues(LY2/q0;)V
    .locals 6

    iget-object v0, p0, LY2/f0;->mPropagation:LY2/k0;

    if-eqz v0, :cond_2

    iget-object v0, p1, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LY2/f0;->mPropagation:LY2/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LY2/B0;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    iget-object v4, p1, LY2/q0;->a:Ljava/util/HashMap;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object p0, p0, LY2/f0;->mPropagation:LY2/k0;

    check-cast p0, LY2/B0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "android:visibility:visibility"

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    iget-object p1, p1, LY2/q0;->b:Landroid/view/View;

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    const-string v0, "android:visibilityPropagation:visibility"

    invoke-virtual {v4, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, v3, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v0

    aput v2, p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    aput v0, p0, v1

    const/4 v0, 0x1

    aget v1, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    aput v2, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v3

    add-int/2addr p1, v2

    aput p1, p0, v0

    const-string p1, "android:visibilityPropagation:center"

    invoke-virtual {v4, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract captureStartValues(LY2/q0;)V
.end method

.method public captureValues(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, LY2/f0;->clearValues(Z)V

    iget-object v0, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, LY2/f0;->b(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, LY2/q0;

    invoke-direct {v3, v2}, LY2/q0;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_4

    invoke-virtual {p0, v3}, LY2/f0;->captureStartValues(LY2/q0;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, LY2/f0;->captureEndValues(LY2/q0;)V

    :goto_2
    iget-object v4, v3, LY2/q0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, LY2/f0;->capturePropagationValues(LY2/q0;)V

    if-eqz p2, :cond_5

    iget-object v4, p0, LY2/f0;->mStartValues:LY2/r0;

    invoke-static {v4, v2, v3}, LY2/f0;->a(LY2/r0;Landroid/view/View;LY2/q0;)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, LY2/f0;->mEndValues:LY2/r0;

    invoke-static {v4, v2, v3}, LY2/f0;->a(LY2/r0;Landroid/view/View;LY2/q0;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move p1, v1

    :goto_4
    iget-object v0, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, LY2/q0;

    invoke-direct {v2, v0}, LY2/q0;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    invoke-virtual {p0, v2}, LY2/f0;->captureStartValues(LY2/q0;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v2}, LY2/f0;->captureEndValues(LY2/q0;)V

    :goto_5
    iget-object v3, v2, LY2/q0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, LY2/f0;->capturePropagationValues(LY2/q0;)V

    if-eqz p2, :cond_9

    iget-object v3, p0, LY2/f0;->mStartValues:LY2/r0;

    invoke-static {v3, v0, v2}, LY2/f0;->a(LY2/r0;Landroid/view/View;LY2/q0;)V

    goto :goto_6

    :cond_9
    iget-object v3, p0, LY2/f0;->mEndValues:LY2/r0;

    invoke-static {v3, v0, v2}, LY2/f0;->a(LY2/r0;Landroid/view/View;LY2/q0;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    iget-object p1, p0, LY2/f0;->mNameOverrides:LN/f;

    if-eqz p1, :cond_d

    iget p1, p1, LN/A;->c:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_8
    if-ge v0, p1, :cond_b

    iget-object v2, p0, LY2/f0;->mNameOverrides:LN/f;

    invoke-virtual {v2, v0}, LN/A;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, LY2/f0;->mStartValues:LY2/r0;

    iget-object v3, v3, LY2/r0;->d:LN/f;

    invoke-virtual {v3, v2}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v2, p0, LY2/f0;->mNameOverrides:LN/f;

    invoke-virtual {v2, v1}, LN/A;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, LY2/f0;->mStartValues:LY2/r0;

    iget-object v3, v3, LY2/r0;->d:LN/f;

    invoke-virtual {v3, v2, v0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public clearValues(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, LY2/f0;->mStartValues:LY2/r0;

    iget-object p1, p1, LY2/r0;->a:LN/f;

    invoke-virtual {p1}, LN/A;->clear()V

    iget-object p1, p0, LY2/f0;->mStartValues:LY2/r0;

    iget-object p1, p1, LY2/r0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, LY2/f0;->mStartValues:LY2/r0;

    iget-object p0, p0, LY2/r0;->c:LN/k;

    invoke-virtual {p0}, LN/k;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LY2/f0;->mEndValues:LY2/r0;

    iget-object p1, p1, LY2/r0;->a:LN/f;

    invoke-virtual {p1}, LN/A;->clear()V

    iget-object p1, p0, LY2/f0;->mEndValues:LY2/r0;

    iget-object p1, p1, LY2/r0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, LY2/f0;->mEndValues:LY2/r0;

    iget-object p0, p0, LY2/r0;->c:LN/k;

    invoke-virtual {p0}, LN/k;->a()V

    :goto_0
    return-void
.end method

.method public clone()LY2/f0;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY2/f0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    new-instance v1, LY2/r0;

    invoke-direct {v1}, LY2/r0;-><init>()V

    iput-object v1, v0, LY2/f0;->mStartValues:LY2/r0;

    new-instance v1, LY2/r0;

    invoke-direct {v1}, LY2/r0;-><init>()V

    iput-object v1, v0, LY2/f0;->mEndValues:LY2/r0;

    const/4 v1, 0x0

    iput-object v1, v0, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    iput-object v1, v0, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    iput-object v1, v0, LY2/f0;->mSeekController:LY2/c0;

    iput-object p0, v0, LY2/f0;->mCloneParent:LY2/f0;

    iput-object v1, v0, LY2/f0;->mListeners:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LY2/f0;->clone()LY2/f0;

    move-result-object p0

    return-object p0
.end method

.method public createAnimator(Landroid/view/ViewGroup;LY2/q0;LY2/q0;)Landroid/animation/Animator;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LY2/q0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # LY2/q0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public createAnimators(Landroid/view/ViewGroup;LY2/r0;LY2/r0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, LY2/f0;->c()LN/f;

    move-result-object v2

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getRootTransition()LY2/f0;

    move-result-object v5

    iget-object v5, v5, LY2/f0;->mSeekController:LY2/c0;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_f

    move-object/from16 v10, p4

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LY2/q0;

    move-object/from16 v12, p5

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LY2/q0;

    if-eqz v11, :cond_1

    iget-object v15, v11, LY2/q0;->c:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v11, 0x0

    :cond_1
    if-eqz v13, :cond_2

    iget-object v15, v13, LY2/q0;->c:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v13, 0x0

    :cond_2
    if-nez v11, :cond_4

    if-nez v13, :cond_4

    :cond_3
    move/from16 v16, v4

    move/from16 v18, v9

    goto/16 :goto_7

    :cond_4
    if-eqz v11, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual {v0, v11, v13}, LY2/f0;->isTransitionRequired(LY2/q0;LY2/q0;)Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_5
    invoke-virtual {v0, v1, v11, v13}, LY2/f0;->createAnimator(Landroid/view/ViewGroup;LY2/q0;LY2/q0;)Landroid/animation/Animator;

    move-result-object v15

    if-eqz v15, :cond_3

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v6

    iget-object v14, v13, LY2/q0;->b:Landroid/view/View;

    move/from16 v16, v4

    if-eqz v6, :cond_9

    array-length v4, v6

    if-lez v4, :cond_9

    new-instance v4, LY2/q0;

    invoke-direct {v4, v14}, LY2/q0;-><init>(Landroid/view/View;)V

    move-object/from16 v10, p3

    iget-object v12, v10, LY2/r0;->a:LN/f;

    invoke-virtual {v12, v14}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LY2/q0;

    if-eqz v12, :cond_7

    move-object/from16 v17, v15

    const/4 v10, 0x0

    :goto_2
    array-length v15, v6

    if-ge v10, v15, :cond_6

    iget-object v15, v4, LY2/q0;->a:Ljava/util/HashMap;

    move/from16 v18, v9

    aget-object v9, v6, v10

    move-object/from16 v19, v6

    iget-object v6, v12, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v18

    move-object/from16 v6, v19

    goto :goto_2

    :cond_6
    move/from16 v18, v9

    goto :goto_3

    :cond_7
    move/from16 v18, v9

    move-object/from16 v17, v15

    :goto_3
    iget v6, v2, LN/A;->c:I

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_a

    invoke-virtual {v2, v9}, LN/A;->f(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    invoke-virtual {v2, v10}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LY2/Y;

    iget-object v12, v10, LY2/Y;->c:LY2/q0;

    if-eqz v12, :cond_8

    iget-object v12, v10, LY2/Y;->a:Landroid/view/View;

    if-ne v12, v14, :cond_8

    iget-object v12, v10, LY2/Y;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v10, v10, LY2/Y;->c:LY2/q0;

    invoke-virtual {v10, v4}, LY2/q0;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v17, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    move/from16 v18, v9

    move-object/from16 v17, v15

    const/4 v4, 0x0

    :cond_a
    :goto_5
    move-object/from16 v15, v17

    goto :goto_6

    :cond_b
    move/from16 v16, v4

    move/from16 v18, v9

    move-object/from16 v17, v15

    iget-object v14, v11, LY2/q0;->b:Landroid/view/View;

    const/4 v4, 0x0

    :goto_6
    if-eqz v15, :cond_e

    iget-object v6, v0, LY2/f0;->mPropagation:LY2/k0;

    if-eqz v6, :cond_c

    invoke-virtual {v6, v1, v0, v11, v13}, LY2/k0;->a(Landroid/view/ViewGroup;LY2/f0;LY2/q0;LY2/q0;)J

    move-result-wide v9

    iget-object v6, v0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    long-to-int v11, v9

    invoke-virtual {v3, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_c
    new-instance v6, LY2/Y;

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v10

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v14, v6, LY2/Y;->a:Landroid/view/View;

    iput-object v9, v6, LY2/Y;->b:Ljava/lang/String;

    iput-object v4, v6, LY2/Y;->c:LY2/q0;

    iput-object v10, v6, LY2/Y;->d:Landroid/view/WindowId;

    iput-object v0, v6, LY2/Y;->e:LY2/f0;

    iput-object v15, v6, LY2/Y;->f:Landroid/animation/Animator;

    if-eqz v5, :cond_d

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v15, v4

    :cond_d
    invoke-virtual {v2, v15, v6}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    add-int/lit8 v9, v18, 0x1

    move/from16 v4, v16

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_10

    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v4, v0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/Y;

    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v7

    iget-object v9, v1, LY2/Y;->f:Landroid/animation/Animator;

    invoke-virtual {v9}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v9

    add-long/2addr v9, v4

    iget-object v1, v1, LY2/Y;->f:Landroid/animation/Animator;

    invoke-virtual {v1, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_10
    return-void
.end method

.method public createSeekController()LY2/l0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    new-instance v0, LY2/c0;

    invoke-direct {v0, p0}, LY2/c0;-><init>(LY2/f0;)V

    iput-object v0, p0, LY2/f0;->mSeekController:LY2/c0;

    invoke-virtual {p0, v0}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    iget-object p0, p0, LY2/f0;->mSeekController:LY2/c0;

    return-object p0
.end method

.method public final e(LY2/f0;LY2/e0;Z)V
    .locals 5

    iget-object v0, p0, LY2/f0;->mCloneParent:LY2/f0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, LY2/f0;->e(LY2/f0;LY2/e0;Z)V

    :cond_0
    iget-object v0, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, LY2/f0;->mListenersCache:[LY2/d0;

    if-nez v1, :cond_1

    new-array v1, v0, [LY2/d0;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, LY2/f0;->mListenersCache:[LY2/d0;

    iget-object v3, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LY2/d0;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-interface {p2, v4, p1, p3}, LY2/e0;->b(LY2/d0;LY2/f0;Z)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, LY2/f0;->mListenersCache:[LY2/d0;

    :cond_3
    return-void
.end method

.method public end()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget v0, p0, LY2/f0;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, LY2/f0;->mNumInstances:I

    if-nez v0, :cond_4

    sget-object v0, LY2/e0;->P:LA9/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    move v0, v2

    :goto_0
    iget-object v3, p0, LY2/f0;->mStartValues:LY2/r0;

    iget-object v3, v3, LY2/r0;->c:LN/k;

    invoke-virtual {v3}, LN/k;->g()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, LY2/f0;->mStartValues:LY2/r0;

    iget-object v3, v3, LY2/r0;->c:LN/k;

    invoke-virtual {v3, v0}, LN/k;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, LY2/f0;->mEndValues:LY2/r0;

    iget-object v3, v3, LY2/r0;->c:LN/k;

    invoke-virtual {v3}, LN/k;->g()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LY2/f0;->mEndValues:LY2/r0;

    iget-object v3, v3, LY2/r0;->c:LN/k;

    invoke-virtual {v3, v0}, LN/k;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, LY2/f0;->mEnded:Z

    :cond_4
    return-void
.end method

.method public excludeChildren(Landroid/view/View;Z)LY2/f0;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LY2/f0;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1, v0}, LY2/V;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, LY2/V;->e(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, LY2/f0;->mTargetChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, LY2/V;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, LY2/V;->e(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, LY2/f0;->mTargetIdExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1, v0}, LY2/V;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, LY2/V;->e(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, LY2/f0;->mTargetTypeExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1, v0}, LY2/V;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, LY2/V;->e(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, LY2/f0;->mTargetNameExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, LY2/f0;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, LY2/f0;->mEpicenterCallback:LY2/Z;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LY2/Z;->a()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getEpicenterCallback()LY2/Z;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, LY2/f0;->mEpicenterCallback:LY2/Z;

    return-object p0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, LY2/f0;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public getMatchedTransitionValues(Landroid/view/View;Z)LY2/q0;
    .locals 5

    iget-object v0, p0, LY2/f0;->mParent:LY2/n0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LY2/f0;->getMatchedTransitionValues(Landroid/view/View;Z)LY2/q0;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LY2/q0;

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    iget-object v4, v4, LY2/q0;->b:Landroid/view/View;

    if-ne v4, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p0, p0, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p0, p0, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LY2/q0;

    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, LY2/f0;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPathMotion()LY2/M;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, LY2/f0;->mPathMotion:LY2/M;

    return-object p0
.end method

.method public getPropagation()LY2/k0;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, LY2/f0;->mPropagation:LY2/k0;

    return-object p0
.end method

.method public final getRootTransition()LY2/f0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LY2/f0;->mParent:LY2/n0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LY2/f0;->getRootTransition()LY2/f0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, LY2/f0;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTargets()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getTotalDurationMillis()J
    .locals 2

    iget-wide v0, p0, LY2/f0;->mTotalDuration:J

    return-wide v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransitionValues(Landroid/view/View;Z)LY2/q0;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LY2/f0;->mParent:LY2/n0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LY2/f0;->getTransitionValues(Landroid/view/View;Z)LY2/q0;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, LY2/f0;->mStartValues:LY2/r0;

    goto :goto_0

    :cond_1
    iget-object p0, p0, LY2/f0;->mEndValues:LY2/r0;

    :goto_0
    iget-object p0, p0, LY2/r0;->a:LN/f;

    invoke-virtual {p0, p1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LY2/q0;

    return-object p0
.end method

.method public hasAnimators()Z
    .locals 0

    iget-object p0, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSeekingSupported()Z
    .locals 0

    instance-of p0, p0, LY2/i;

    return p0
.end method

.method public isTransitionRequired(LY2/q0;LY2/q0;)Z
    .locals 5
    .param p1    # LY2/q0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # LY2/q0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, LY2/f0;->getTransitionProperties()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-static {p1, p2, v4}, LY2/f0;->d(LY2/q0;LY2/q0;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p1, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2}, LY2/f0;->d(LY2/q0;LY2/q0;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method public isValidTarget(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, LY2/f0;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, LY2/f0;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, LY2/f0;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, LY2/f0;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, LY2/f0;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/O;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, LY2/f0;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Lf1/O;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    iget-object v2, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    return v0

    :cond_7
    iget-object v2, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, LY2/f0;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/O;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    move v1, v3

    :goto_1
    iget-object v2, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, LY2/f0;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v0

    :cond_a
    add-int/2addr v1, v0

    goto :goto_1

    :cond_b
    return v3

    :cond_c
    :goto_2
    return v0
.end method

.method public notifyListeners(LY2/e0;Z)V
    .locals 0

    invoke-virtual {p0, p0, p1, p2}, LY2/f0;->e(LY2/f0;LY2/e0;Z)V

    return-void
.end method

.method public pause(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, LY2/f0;->mEnded:Z

    if-nez p1, :cond_1

    iget-object p1, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    iget-object v1, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    sget-object v1, LY2/f0;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v1, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_0

    aget-object v2, v0, p1

    const/4 v3, 0x0

    aput-object v3, v0, p1

    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    sget-object p1, LY2/e0;->R:LA9/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    iput-boolean v1, p0, LY2/f0;->mPaused:Z

    :cond_1
    return-void
.end method

.method public playTransition(Landroid/view/ViewGroup;)V
    .locals 16
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v6, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    iget-object v0, v6, LY2/f0;->mStartValues:LY2/r0;

    iget-object v1, v6, LY2/f0;->mEndValues:LY2/r0;

    new-instance v2, LN/f;

    iget-object v3, v0, LY2/r0;->a:LN/f;

    invoke-direct {v2, v3}, LN/f;-><init>(LN/f;)V

    new-instance v3, LN/f;

    iget-object v4, v1, LY2/r0;->a:LN/f;

    invoke-direct {v3, v4}, LN/f;-><init>(LN/f;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v7, v6, LY2/f0;->mMatchOrder:[I

    array-length v8, v7

    const/4 v9, 0x1

    if-ge v5, v8, :cond_9

    aget v7, v7, v5

    if-eq v7, v9, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v7, v0, LY2/r0;->c:LN/k;

    invoke-virtual {v7}, LN/k;->g()I

    move-result v8

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_8

    invoke-virtual {v7, v9}, LN/k;->h(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_1

    invoke-virtual {v6, v10}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v7, v9}, LN/k;->d(I)J

    move-result-wide v11

    iget-object v13, v1, LY2/r0;->c:LN/k;

    invoke-virtual {v13, v11, v12}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_1

    invoke-virtual {v6, v11}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v2, v10}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LY2/q0;

    invoke-virtual {v3, v11}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LY2/q0;

    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    iget-object v14, v6, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v6, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v10}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v11}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, v0, LY2/r0;->b:Landroid/util/SparseArray;

    iget-object v8, v1, LY2/r0;->b:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v10, v4

    :goto_2
    if-ge v10, v9, :cond_8

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_3

    invoke-virtual {v6, v11}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_3

    invoke-virtual {v6, v12}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v2, v11}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LY2/q0;

    invoke-virtual {v3, v12}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LY2/q0;

    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    iget-object v15, v6, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v6, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v11}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v12}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    iget-object v7, v0, LY2/r0;->d:LN/f;

    iget-object v8, v1, LY2/r0;->d:LN/f;

    iget v9, v7, LN/A;->c:I

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_8

    invoke-virtual {v7, v10}, LN/A;->j(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_5

    invoke-virtual {v6, v11}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v7, v10}, LN/A;->f(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v12}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_5

    invoke-virtual {v6, v12}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v2, v11}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LY2/q0;

    invoke-virtual {v3, v12}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LY2/q0;

    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    iget-object v15, v6, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v6, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v11}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v12}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    iget v7, v2, LN/A;->c:I

    sub-int/2addr v7, v9

    :goto_4
    if-ltz v7, :cond_8

    invoke-virtual {v2, v7}, LN/A;->f(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_7

    invoke-virtual {v6, v8}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v3, v8}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LY2/q0;

    if-eqz v8, :cond_7

    iget-object v9, v8, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v6, v9}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2, v7}, LN/A;->h(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LY2/q0;

    iget-object v10, v6, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v6, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    move v0, v4

    :goto_6
    iget v1, v2, LN/A;->c:I

    const/4 v5, 0x0

    if-ge v0, v1, :cond_b

    invoke-virtual {v2, v0}, LN/A;->j(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/q0;

    iget-object v7, v1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v6, v7}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v6, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    move v0, v4

    :goto_7
    iget v1, v3, LN/A;->c:I

    if-ge v0, v1, :cond_d

    invoke-virtual {v3, v0}, LN/A;->j(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/q0;

    iget-object v2, v1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v6, v2}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v6, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    invoke-static {}, LY2/f0;->c()LN/f;

    move-result-object v0

    iget v1, v0, LN/A;->c:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    sub-int/2addr v1, v9

    :goto_8
    if-ltz v1, :cond_14

    invoke-virtual {v0, v1}, LN/A;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_13

    invoke-virtual {v0, v3}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LY2/Y;

    if-eqz v5, :cond_13

    iget-object v7, v5, LY2/Y;->a:Landroid/view/View;

    if-eqz v7, :cond_13

    iget-object v8, v5, LY2/Y;->d:Landroid/view/WindowId;

    invoke-virtual {v2, v8}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v6, v7, v9}, LY2/f0;->getTransitionValues(Landroid/view/View;Z)LY2/q0;

    move-result-object v8

    invoke-virtual {v6, v7, v9}, LY2/f0;->getMatchedTransitionValues(Landroid/view/View;Z)LY2/q0;

    move-result-object v10

    if-nez v8, :cond_e

    if-nez v10, :cond_e

    iget-object v10, v6, LY2/f0;->mEndValues:LY2/r0;

    iget-object v10, v10, LY2/r0;->a:LN/f;

    invoke-virtual {v10, v7}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, LY2/q0;

    :cond_e
    if-nez v8, :cond_f

    if-eqz v10, :cond_13

    :cond_f
    iget-object v7, v5, LY2/Y;->e:LY2/f0;

    iget-object v5, v5, LY2/Y;->c:LY2/q0;

    invoke-virtual {v7, v5, v10}, LY2/f0;->isTransitionRequired(LY2/q0;LY2/q0;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v7}, LY2/f0;->getRootTransition()LY2/f0;

    move-result-object v5

    iget-object v5, v5, LY2/f0;->mSeekController:LY2/c0;

    if-eqz v5, :cond_10

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    iget-object v5, v7, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, LY2/e0;->Q:LA9/b;

    invoke-virtual {v7, v3, v4}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    iget-boolean v3, v7, LY2/f0;->mEnded:Z

    if-nez v3, :cond_13

    iput-boolean v9, v7, LY2/f0;->mEnded:Z

    sget-object v3, LY2/e0;->P:LA9/b;

    invoke-virtual {v7, v3, v4}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    goto :goto_a

    :cond_10
    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v0, v3}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_12
    :goto_9
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_13
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_8

    :cond_14
    iget-object v2, v6, LY2/f0;->mStartValues:LY2/r0;

    iget-object v3, v6, LY2/f0;->mEndValues:LY2/r0;

    iget-object v4, v6, LY2/f0;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v5, v6, LY2/f0;->mEndValuesList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, LY2/f0;->createAnimators(Landroid/view/ViewGroup;LY2/r0;LY2/r0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, v6, LY2/f0;->mSeekController:LY2/c0;

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, LY2/f0;->runAnimators()V

    goto :goto_b

    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_17

    invoke-virtual/range {p0 .. p0}, LY2/f0;->prepareAnimatorsForSeeking()V

    iget-object v0, v6, LY2/f0;->mSeekController:LY2/c0;

    iget-object v1, v0, LY2/c0;->g:LY2/f0;

    invoke-virtual {v1}, LY2/f0;->getTotalDurationMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    const-wide/16 v4, 0x1

    :cond_16
    iget-wide v2, v0, LY2/c0;->a:J

    invoke-virtual {v1, v4, v5, v2, v3}, LY2/f0;->setCurrentPlayTimeMillis(JJ)V

    iput-wide v4, v0, LY2/c0;->a:J

    iget-object v0, v6, LY2/f0;->mSeekController:LY2/c0;

    iput-boolean v9, v0, LY2/c0;->b:Z

    :cond_17
    :goto_b
    return-void
.end method

.method public prepareAnimatorsForSeeking()V
    .locals 10

    invoke-static {}, LY2/f0;->c()LN/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LY2/f0;->mTotalDuration:J

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v0, v4}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LY2/Y;

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {p0}, LY2/f0;->getDuration()J

    move-result-wide v6

    cmp-long v6, v6, v1

    iget-object v5, v5, LY2/Y;->f:Landroid/animation/Animator;

    if-ltz v6, :cond_0

    invoke-virtual {p0}, LY2/f0;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    invoke-virtual {p0}, LY2/f0;->getStartDelay()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-ltz v6, :cond_1

    invoke-virtual {p0}, LY2/f0;->getStartDelay()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_1
    invoke-virtual {p0}, LY2/f0;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, LY2/f0;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    iget-object v5, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, p0, LY2/f0;->mTotalDuration:J

    invoke-static {v4}, LY2/a0;->a(Landroid/animation/Animator;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, LY2/f0;->mTotalDuration:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeListener(LY2/d0;)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LY2/f0;->mCloneParent:LY2/f0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    :cond_1
    iget-object p1, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, LY2/f0;->mListeners:Ljava/util/ArrayList;

    :cond_2
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)LY2/f0;
    .locals 1

    iget-object v0, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, LY2/f0;->mPaused:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, LY2/f0;->mEnded:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    iget-object v2, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Animator;

    sget-object v2, LY2/f0;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v2, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    aget-object v2, v1, p1

    const/4 v3, 0x0

    aput-object v3, v1, p1

    invoke-virtual {v2}, Landroid/animation/Animator;->resume()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    sget-object p1, LY2/e0;->S:LA9/b;

    invoke-virtual {p0, p1, v0}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    :cond_1
    iput-boolean v0, p0, LY2/f0;->mPaused:Z

    :cond_2
    return-void
.end method

.method public runAnimators()V
    .locals 4

    invoke-virtual {p0}, LY2/f0;->start()V

    invoke-static {}, LY2/f0;->c()LN/f;

    move-result-object v0

    iget-object v1, p0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, LN/A;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, LY2/f0;->start()V

    if-eqz v2, :cond_0

    new-instance v3, LY2/X;

    invoke-direct {v3, p0, v0}, LY2/X;-><init>(LY2/f0;LN/f;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v2}, LY2/f0;->animate(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LY2/f0;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, LY2/f0;->end()V

    return-void
.end method

.method public setCurrentPlayTimeMillis(JJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getTotalDurationMillis()J

    move-result-wide v3

    cmp-long v5, v1, p3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v10, p3, v8

    if-gez v10, :cond_1

    cmp-long v11, v1, v8

    if-gez v11, :cond_2

    :cond_1
    cmp-long v11, p3, v3

    if-lez v11, :cond_3

    cmp-long v11, v1, v3

    if-gtz v11, :cond_3

    :cond_2
    iput-boolean v6, v0, LY2/f0;->mEnded:Z

    sget-object v11, LY2/e0;->O:LA9/b;

    invoke-virtual {v0, v11, v5}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    :cond_3
    iget-object v11, v0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, v0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    iget-object v13, v0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/animation/Animator;

    sget-object v13, LY2/f0;->EMPTY_ANIMATOR_ARRAY:[Landroid/animation/Animator;

    iput-object v13, v0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    :goto_1
    if-ge v6, v11, :cond_4

    aget-object v13, v12, v6

    const/4 v14, 0x0

    aput-object v14, v12, v6

    invoke-static {v13}, LY2/a0;->a(Landroid/animation/Animator;)J

    move-result-wide v14

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v13, v10, v11}, LY2/a0;->b(Landroid/animation/Animator;J)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v16

    move/from16 v11, v17

    goto :goto_1

    :cond_4
    move/from16 v16, v10

    iput-object v12, v0, LY2/f0;->mAnimatorCache:[Landroid/animation/Animator;

    cmp-long v6, v1, v3

    if-lez v6, :cond_5

    cmp-long v3, p3, v3

    if-lez v3, :cond_6

    :cond_5
    cmp-long v1, v1, v8

    if-gez v1, :cond_8

    if-ltz v16, :cond_8

    :cond_6
    if-lez v6, :cond_7

    iput-boolean v7, v0, LY2/f0;->mEnded:Z

    :cond_7
    sget-object v1, LY2/e0;->P:LA9/b;

    invoke-virtual {v0, v1, v5}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    :cond_8
    return-void
.end method

.method public setDuration(J)LY2/f0;
    .locals 0

    iput-wide p1, p0, LY2/f0;->mDuration:J

    return-object p0
.end method

.method public setEpicenterCallback(LY2/Z;)V
    .locals 0

    iput-object p1, p0, LY2/f0;->mEpicenterCallback:LY2/Z;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;
    .locals 0

    iput-object p1, p0, LY2/f0;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget v2, p1, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    const/4 v3, 0x4

    if-gt v2, v3, :cond_3

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, p1, v3

    if-eq v4, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matches contains a duplicate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matches contains invalid value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, LY2/f0;->mMatchOrder:[I

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p1, LY2/f0;->DEFAULT_MATCH_ORDER:[I

    iput-object p1, p0, LY2/f0;->mMatchOrder:[I

    :goto_3
    return-void
.end method

.method public setPathMotion(LY2/M;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, LY2/f0;->STRAIGHT_PATH_MOTION:LY2/M;

    iput-object p1, p0, LY2/f0;->mPathMotion:LY2/M;

    goto :goto_0

    :cond_0
    iput-object p1, p0, LY2/f0;->mPathMotion:LY2/M;

    :goto_0
    return-void
.end method

.method public setPropagation(LY2/k0;)V
    .locals 0

    iput-object p1, p0, LY2/f0;->mPropagation:LY2/k0;

    return-void
.end method

.method public setStartDelay(J)LY2/f0;
    .locals 0

    iput-wide p1, p0, LY2/f0;->mStartDelay:J

    return-object p0
.end method

.method public start()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget v0, p0, LY2/f0;->mNumInstances:I

    if-nez v0, :cond_0

    sget-object v0, LY2/e0;->O:LA9/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    iput-boolean v1, p0, LY2/f0;->mEnded:Z

    :cond_0
    iget v0, p0, LY2/f0;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LY2/f0;->mNumInstances:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0}, LY2/f0;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LY2/f0;->mDuration:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    const-string v1, ") "

    if-eqz p1, :cond_0

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, LY2/f0;->mDuration:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v5, p0, LY2/f0;->mStartDelay:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LY2/f0;->mStartDelay:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, LY2/f0;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz p1, :cond_2

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LY2/f0;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    iget-object p1, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    :cond_3
    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez p1, :cond_5

    move p1, v2

    :goto_0
    iget-object v3, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    if-lez p1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v3, p0, LY2/f0;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    :goto_1
    iget-object p1, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    if-lez v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p1, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
