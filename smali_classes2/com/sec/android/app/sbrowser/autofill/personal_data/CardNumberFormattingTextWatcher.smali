.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mSelfChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;->mSelfChange:Z

    return-void
.end method

.method private static insertSeparators(Landroid/text/Editable;)V
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;->isAMEXCard(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    aput v3, v0, v4

    const/16 v1, 0xd

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    aput v3, v0, v4

    const/16 v3, 0xb

    aput v3, v0, v2

    const/16 v2, 0x12

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x19

    aput v2, v0, v1

    :goto_0
    array-length v1, v0

    :goto_1
    if-ge v4, v1, :cond_2

    aget v2, v0, v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    const-string v3, " - "

    invoke-interface {p0, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static isAMEXCard(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v3, 0xf

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "34"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "37"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private static removeSeparators(Landroid/text/Editable;)V
    .locals 3

    const-string v0, " "

    invoke-static {p0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v0, "-"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    :goto_1
    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;->mSelfChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;->mSelfChange:Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;->removeSeparators(Landroid/text/Editable;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;->insertSeparators(Landroid/text/Editable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardNumberFormattingTextWatcher;->mSelfChange:Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
