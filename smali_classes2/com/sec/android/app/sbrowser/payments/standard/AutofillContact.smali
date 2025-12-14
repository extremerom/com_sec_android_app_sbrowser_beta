.class public Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
.source "SourceFile"


# instance fields
.field private mCompletionStatus:I

.field private final mContext:Landroid/content/Context;

.field private mPayerEmail:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPayerName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPayerPhone:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

.field private mRequestEmail:Z

.field private mRequestName:Z

.field private mRequestPhone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$CompletionStatus;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestName:Z

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestPhone:Z

    iput-boolean p9, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestEmail:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsEditable:Z

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->setContactInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p6}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->updateCompletionStatus(I)V

    return-void
.end method

.method private setContactInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p3, v1

    :cond_1
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerPhone:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p4, v1

    :cond_2
    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerEmail:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerName:Ljava/lang/String;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerPhone:Ljava/lang/String;

    if-nez p2, :cond_3

    move-object p3, p4

    goto :goto_0

    :cond_3
    move-object p3, p2

    :goto_0
    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p4

    :goto_1
    invoke-virtual {p0, p1, p3, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateIdentifierAndLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerPhone:Ljava/lang/String;

    if-nez p3, :cond_6

    move-object v0, p4

    goto :goto_2

    :cond_6
    move-object v0, p3

    :goto_2
    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, p4

    :goto_3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateIdentifierAndLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private updateCompletionStatus(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mCompletionStatus:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsComplete:Z

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mContext:Landroid/content/Context;

    const v0, 0x7f1408ea

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mContext:Landroid/content/Context;

    const v0, 0x7f1408f1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mContext:Landroid/content/Context;

    const v0, 0x7f1408dc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mContext:Landroid/content/Context;

    const v0, 0x7f1408ec

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public completeContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->setContactInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->updateCompletionStatus(I)V

    return-void
.end method

.method public getPayerEmail()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerEmail:Ljava/lang/String;

    return-object p0
.end method

.method public getPayerName()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerName:Ljava/lang/String;

    return-object p0
.end method

.method public getPayerPhone()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerPhone:Ljava/lang/String;

    return-object p0
.end method

.method public getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mProfile:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    return-object p0
.end method

.method public getRelevanceScore()I
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestName:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mCompletionStatus:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestPhone:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mCompletionStatus:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestEmail:Z

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mCompletionStatus:I

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    return v1
.end method

.method public isComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsComplete:Z

    return p0
.end method

.method public isEqualOrSupersetOf(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestName:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerName:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestPhone:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerPhone:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerPhone:Ljava/lang/String;

    if-eqz v2, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerPhone:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mRequestEmail:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerEmail:Ljava/lang/String;

    if-nez p0, :cond_4

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerEmail:Ljava/lang/String;

    if-eqz v0, :cond_4

    return v1

    :cond_4
    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->mPayerEmail:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public toPayerDetail()Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;
    .locals 2

    new-instance v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    invoke-direct {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerPhone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->phone:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerEmail()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->email:Ljava/lang/String;

    return-object v0
.end method
