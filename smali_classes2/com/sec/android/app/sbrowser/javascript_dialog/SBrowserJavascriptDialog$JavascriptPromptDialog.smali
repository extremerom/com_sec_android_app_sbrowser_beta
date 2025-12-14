.class Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$JavascriptPromptDialog;
.super Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavascriptPromptDialog"
.end annotation


# instance fields
.field private final mDefaultPromptText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    const v1, 0x7f14084e

    const/4 v4, 0x0

    const v2, 0x7f1402c1

    move-object v0, p0

    move v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;-><init>(IIZILjava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$JavascriptPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public prepare(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->prepare(Landroid/view/ViewGroup;)V

    const v0, 0x7f0b0658

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$JavascriptPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog$JavascriptPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    return-void
.end method
