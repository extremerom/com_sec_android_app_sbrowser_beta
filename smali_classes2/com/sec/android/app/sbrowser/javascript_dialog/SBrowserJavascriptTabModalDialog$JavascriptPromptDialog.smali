.class Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;
.super Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavascriptPromptDialog"
.end annotation


# instance fields
.field private final mDefaultPromptText:Ljava/lang/String;

.field private mPromptEditText:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const v0, 0x7f1402c1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public prepare(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->prepare(Landroid/view/ViewGroup;)V

    const v0, 0x7f0b0658

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;->mPromptEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;->mPromptEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;->mPromptEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    return-void
.end method
