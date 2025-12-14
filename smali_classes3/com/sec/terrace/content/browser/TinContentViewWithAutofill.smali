.class public Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;
.super Lcom/sec/terrace/content/browser/TinContentView;
.source "SourceFile"


# instance fields
.field private mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinContentView;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object p3, p0, Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;->mTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public static createContentView(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentView;
    .locals 1

    new-instance v0, Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/Terrace;)V

    return-object v0
.end method


# virtual methods
.method public autofill(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getPersonalDataSyncSetFlag()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->autofill(Landroid/util/SparseArray;)V

    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->autofill(Landroid/util/SparseArray;)V

    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getPersonalDataSyncSetFlag()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->onProvideAutoFillVirtualStructure(Landroid/view/ViewStructure;I)V

    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/chromium/components/embedder_support/view/ContentView;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public setImportantForAutofillForVirtualView(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    :goto_0
    return-void
.end method
