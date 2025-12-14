.class public Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$CompletionStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase<",
        "Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEmailAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPayerErrors:Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPayerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestPayerEmail:Z

.field private final mRequestPayerName:Z

.field private final mRequestPayerPhone:Z

.field private final mSaveToDisk:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerName:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerPhone:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerEmail:Z

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mSaveToDisk:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPayerNames:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPhoneNumbers:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mEmailAddresses:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mSaveToDisk:Z

    return p0
.end method

.method private getEmailValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mEmailValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mEmailValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mEmailValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    return-object p0
.end method

.method private getPhoneValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPhoneValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPhoneValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPhoneValidator:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    return-object p0
.end method


# virtual methods
.method public addEmailAddressIfValid(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getEmailValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mEmailAddresses:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPayerNameIfValid(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPayerNames:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPhoneNumberIfValid(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getPhoneValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPhoneNumbers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkContactCompletionStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$CompletionStatus;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerName:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerPhone:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getPhoneValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    or-int/lit8 p1, p1, 0x4

    :cond_1
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerEmail:Z

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getEmailValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    or-int/lit8 p1, p1, 0x2

    :cond_2
    return p1
.end method

.method public edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 18
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->edit(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    iget-object v9, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-direct {v10}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;-><init>()V

    iget-boolean v15, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerName:Z

    iget-boolean v2, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerPhone:Z

    iget-boolean v3, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerEmail:Z

    const/4 v13, 0x0

    const/4 v14, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v1

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v8 .. v17}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget-boolean v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerName:Z

    const v3, 0x7f1409b7

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v5, 0x7f14018c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPayerNames:Ljava/util/Set;

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerName()Ljava/lang/String;

    move-result-object v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x4

    const/4 v14, 0x0

    invoke-static/range {v8 .. v15}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(ILjava/lang/CharSequence;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iget-boolean v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerPhone:Z

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v6, 0x7f14018d

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPhoneNumbers:Ljava/util/Set;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getPhoneValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    move-result-object v11

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v6, 0x7f1408f0

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerPhone()Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x1

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(ILjava/lang/CharSequence;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    iget-boolean v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerEmail:Z

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v8, 0x7f140188

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mEmailAddresses:Ljava/util/Set;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->getEmailValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;

    move-result-object v12

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    const v3, 0x7f1408db

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerEmail()Ljava/lang/String;

    move-result-object v16

    const/4 v9, 0x2

    const/4 v13, 0x0

    invoke-static/range {v9 .. v16}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->createTextInput(ILjava/lang/CharSequence;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, v4

    :goto_3
    new-instance v9, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    const v3, 0x7f1408c0

    goto :goto_4

    :cond_4
    const v3, 0x7f1408da

    :goto_4
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPayerErrors:Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;->name:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v1, v4

    :goto_5
    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    :cond_6
    if-eqz v6, :cond_8

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPayerErrors:Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;->phone:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v1, v4

    :goto_6
    invoke-virtual {v6, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v6}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    :cond_8
    if-eqz v8, :cond_a

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPayerErrors:Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;

    if-eqz v1, :cond_9

    iget-object v4, v1, Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;->email:Ljava/lang/String;

    :cond_9
    invoke-virtual {v8, v4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v8}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    :cond_a
    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$1;

    move-object/from16 v10, p2

    invoke-direct {v1, v7, v10, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V

    invoke-virtual {v9, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->setCancelCallback(Ljava/lang/Runnable;)V

    new-instance v11, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    invoke-virtual {v9, v11}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->setDoneCallback(Ljava/lang/Runnable;)V

    const-string v0, "206"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->mEditorDialog:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->show(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;)V

    return-void
.end method

.method public getRequestPayerEmail()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerEmail:Z

    return p0
.end method

.method public getRequestPayerName()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerName:Z

    return p0
.end method

.method public getRequestPayerPhone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mRequestPayerPhone:Z

    return p0
.end method

.method public setPayerErrors(Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->mPayerErrors:Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;

    return-void
.end method
