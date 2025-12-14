.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;,
        Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;
    }
.end annotation


# instance fields
.field private mActionIconAction:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mActionIconDescriptionForAccessibility:I

.field private mActionIconResourceId:I

.field private mBottomLabel:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCustomErrorMessage:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDropdownCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDropdownKeyValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDropdownKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIconDescriptionsForAccessibility:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIconResourceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mInputTypeHint:I

.field private mInvalidErrorMessage:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsChecked:Z

.field private mIsFullLine:Z

.field private mLabel:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLabelIconResourceId:I

.field private mMidLabel:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMonth:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRequiredErrorMessage:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mValue:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mValueIconGenerator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mYear:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIsChecked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIsFullLine:Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mInputTypeHint:I

    return-void
.end method

.method public static createDropdown(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;-><init>(I)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setDropdownKeyValues(Ljava/util/List;)V

    return-object v0
.end method

.method public static createExpiryDate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;-><init>(I)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setMonth(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setYear(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createIconList(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;-><init>(I)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabel:Ljava/lang/CharSequence;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIconResourceIds:Ljava/util/List;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIconDescriptionsForAccessibility:Ljava/util/List;

    return-object v0
.end method

.method public static createLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;-><init>(I)V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabel:Ljava/lang/CharSequence;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mMidLabel:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mBottomLabel:Ljava/lang/CharSequence;

    iput p3, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabelIconResourceId:I

    return-object v0
.end method

.method public static createTextInput()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;-><init>(I)V

    return-object v0
.end method

.method public static createTextInput(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;-><init>(I)V

    return-object v0
.end method

.method public static createTextInput(ILjava/lang/CharSequence;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 1
    .param p2    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;-><init>(I)V

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p0, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mSuggestions:Ljava/util/List;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    iput-object p4, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValueIconGenerator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;

    iput-object p6, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mInvalidErrorMessage:Ljava/lang/CharSequence;

    iput-object p5, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mRequiredErrorMessage:Ljava/lang/CharSequence;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabel:Ljava/lang/CharSequence;

    iput-object p7, v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValue:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public getActionIconAction()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mActionIconAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getActionIconDescriptionForAccessibility()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mActionIconDescriptionForAccessibility:I

    return p0
.end method

.method public getActionIconResourceId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mActionIconResourceId:I

    return p0
.end method

.method public getBottomLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mBottomLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDropdownKeyValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownKeyValues:Ljava/util/List;

    return-object p0
.end method

.method public getDropdownKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownKeys:Ljava/util/Set;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mErrorMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getIconDescriptionsForAccessibility()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIconDescriptionsForAccessibility:Ljava/util/List;

    return-object p0
.end method

.method public getIconResourceIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIconResourceIds:Ljava/util/List;

    return-object p0
.end method

.method public getInputTypeHint()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mInputTypeHint:I

    return p0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLabelIconResourceId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabelIconResourceId:I

    return p0
.end method

.method public getMidLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mMidLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mMonth:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mSuggestions:Ljava/util/List;

    return-object p0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValue:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getValueIconGenerator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValueIconGenerator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;

    return-object p0
.end method

.method public getYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mYear:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIsChecked:Z

    return p0
.end method

.method public isFullLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIsFullLine:Z

    return p0
.end method

.method public isRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mRequiredErrorMessage:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mCustomErrorMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mCustomErrorMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mErrorMessage:Ljava/lang/CharSequence;

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValue:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValue:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mRequiredErrorMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mErrorMessage:Ljava/lang/CharSequence;

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mInvalidErrorMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mErrorMessage:Ljava/lang/CharSequence;

    return v1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mErrorMessage:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    return p0
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mCustomErrorMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDropdownCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    return-void
.end method

.method public setDropdownKey(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValue:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDropdownKeyValues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownKeyValues:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownKeys:Ljava/util/Set;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownKeyValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mDropdownKeyValues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIsChecked:Z

    return-void
.end method

.method public setIsFullLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mIsFullLine:Z

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mMonth:Ljava/lang/String;

    return-void
.end method

.method public setRequiredErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mRequiredErrorMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mValue:Ljava/lang/CharSequence;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mYear:Ljava/lang/String;

    return-void
.end method

.method public setYearFormatYY(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "200"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mYear:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "20"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mYear:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->mYear:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
