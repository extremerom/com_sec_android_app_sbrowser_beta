.class public Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;
    }
.end annotation


# instance fields
.field private mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;

.field private mIconPaddingEnd:Ljava/lang/Integer;

.field private mIsApplyingIconPaddingEnd:Z

.field private mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

.field private mSALoggingEventId:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->PreferenceSALog:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private sendSAEventLog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mSALoggingEventId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lw2/H;)V
    .locals 3
    .param p1    # Lw2/H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mSummary:Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;->mPaddingEnd:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;->mMinWidth:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIconPaddingEnd:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;

    iget v0, v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;->mPaddingEnd:I

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIconFrameLayoutDefault:Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom$IconFrameLayout;->mMinWidth:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v1, v1, p0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->sendSAEventLog()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIsApplyingIconPaddingEnd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIconPaddingEnd:Ljava/lang/Integer;

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIconPaddingEnd:Ljava/lang/Integer;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIsApplyingIconPaddingEnd:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mIsApplyingIconPaddingEnd:Z

    return-void
.end method

.method public setSALoggingDelegate(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mSALoggingDelegate:Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    return-void
.end method

.method public setSingleLineSummary(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;->mSummary:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    return-void
.end method
