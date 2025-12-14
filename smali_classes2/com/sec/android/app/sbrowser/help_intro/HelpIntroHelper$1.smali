.class Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->createLinkedTextFactory(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinkedText(ILjava/lang/String;)Landroid/text/Spannable;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/text/SpannableString;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public getLinkedText(ILjava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getPrivacyPolicyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTermsOfServiceUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getTermsOfServiceUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
