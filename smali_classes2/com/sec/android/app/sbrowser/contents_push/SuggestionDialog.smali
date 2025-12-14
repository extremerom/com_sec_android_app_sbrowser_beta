.class public Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;
    }
.end annotation


# instance fields
.field private mDialog:Lm/l;

.field private mListener:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->lambda$createDialog$0(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private createDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;)Lm/l;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lm/k;

    const v1, 0x7f150324

    invoke-direct {v0, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140004

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/auth/f;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1, p2}, Lcom/sec/android/app/sbrowser/auth/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    const v2, 0x7f0e01b0

    invoke-virtual {p2, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0b0c03

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    const v1, 0x7f0b0c08

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1403a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->privacyPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->termsOfService()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    iget-object p1, p0, Lm/l;->f:Lm/j;

    iput-object p2, p1, Lm/j;->g:Landroid/view/View;

    iput v2, p1, Lm/j;->h:I

    iput-boolean v2, p1, Lm/j;->j:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    return-object p0
.end method

.method private getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "%1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "%2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, "%3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    const-string v3, "%4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    const-string v4, ""

    filled-new-array {v4, v4, v4, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v0, :cond_1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f140c70

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;

    move-result-object p2

    const p3, 0x7f140c72

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p4, p3}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;

    move-result-object p0

    const/16 p1, 0x21

    invoke-virtual {v4, p2, v0, v1, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, p0, v2, v3, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-object v4
.end method

.method private isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->mDialog:Lm/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$createDialog$0(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;Landroid/content/DialogInterface;I)V
    .locals 0

    const p2, 0x7f140c6d

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "553"

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;->onPositiveButtonClicked()V

    return-void
.end method


# virtual methods
.method public showDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->createDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->mDialog:Lm/l;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->mListener:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateDialogViewIfNeeded(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->mDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->mListener:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->createDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$Listener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->mDialog:Lm/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
