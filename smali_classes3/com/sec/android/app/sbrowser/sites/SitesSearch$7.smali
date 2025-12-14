.class Lcom/sec/android/app/sbrowser/sites/SitesSearch$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/SitesSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$7;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$7;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->c(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v4

    new-instance p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$7;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->l(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/SitesDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/SitesDelegate;->getCurrentTab()I

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;-><init>(Ljava/lang/String;JII)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$7;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->m(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch$7;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->j(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
